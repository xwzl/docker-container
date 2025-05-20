#!/bin/bash
set -e

K8S_VERSION="1.33.0"
CNI_VERSION="1.3.0"
CRICTL_VERSION="1.30.0"

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

echo "[5/6] 加载 K8s 镜像..."
cd images
for img in *.tar; do
    docker load -i $img
done
cd ..

echo "[6/6] 运行 kubeadm join..."
echo "📌 请在 master 节点上运行如下命令获取 join 命令："
echo ""
echo "  kubeadm token create --print-join-command"
echo ""
echo "然后在本节点运行该命令完成加入。"