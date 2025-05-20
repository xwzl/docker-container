#!/bin/bash
set -e

K8S_VERSION="1.33.0"
CNI_VERSION="1.3.0"
CRICTL_VERSION="1.30.0"

sudo modprobe overlay
sudo modprobe br_netfilter

sudo tee /etc/sysctl.d/kubernetes.conf <<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward                 = 1
EOF

sudo sysctl --system

sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml

# SystemdCgroup 与 sandbox_image 修改为对应的版本
#[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
#  SystemdCgroup = true

#sandbox_image = "registry.k8s.io/pause:3.10"


echo "[1/6] 安装依赖包..."
apt update
apt install -y iptables socat conntrack ebtables ethtool curl

echo "[2/6] 安装 containerd..."
tar -C /usr/local -xzf containerd-1.7.13-linux-amd64.tar.gz
install -m 644 ./containerd.service /lib/systemd/system/
systemctl daemon-reexec
systemctl enable --now containerd

echo "[3/6] 安装 CNI plugins..."
mkdir -p /opt/cni/bin
tar -C /opt/cni/bin -xzf cni-plugins-linux-amd64-v$CNI_VERSION.tgz

echo "[4/6] 安装 cri-tools 和 kube 组件..."
tar -xzf crictl-v$CRICTL_VERSION-linux-amd64.tar.gz -C /usr/local/bin
cp kube* /usr/local/bin/
chmod +x /usr/local/bin/kube*

sudo tee /etc/crictl.yaml > /dev/null <<EOF
runtime-endpoint: unix:///run/containerd/containerd.sock
image-endpoint: unix:///run/containerd/containerd.sock
timeout: 10
debug: false
EOF

echo "[5/6] 加载 K8s 镜像..."

cd images

for img in *.tar; do
    docker load -i $img
    ctr -n k8s.io images import $img
done

ctr -n k8s.io images ls
cd ..

echo "[6/6] 初始化集群..."
kubeadm init --config kubeadm.yaml --upload-certs

echo "🔧 配置 kubectl 使用..."
mkdir -p $HOME/.kube
cp /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

echo "✅ Master 节点安装完成，请部署网络插件（如 flannel）。"