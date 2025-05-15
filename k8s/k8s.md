# 步骤一：初始化所有节点基础环境

```shell
# 1. 关闭防火墙/SELinux/swap
swapoff -a && sed -i '/ swap / s/^/#/' /etc/fstab
systemctl stop firewalld && systemctl disable firewalld
setenforce 0 && sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config

# 2. 配置内核参数
cat <<EOF | tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

cat <<EOF | tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables  = 1
net.ipv4.ip_forward = 1
EOF

modprobe br_netfilter
sysctl --system

# 3. 安装 Docker（或 containerd）
# 推荐 containerd
apt install -y containerd
containerd config default > /etc/containerd/config.toml
systemctl restart containerd && systemctl enable containerd

# 4. 添加 Kubernetes 源
cat <<EOF | tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.33/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.33/rpm/repodata/repomd.xml.key
EOF

# 5. 安装 CRI 
Kubernetes v1.24+默认不再支持Docker作为直接运行时，需要安装兼容工具如cri-dockerd。

VERSION="0.3.1"
curl -LO https://github.com/Mirantis/cri-dockerd/releases/download/v$VERSION/cri-dockerd-$VERSION.amd64.tgz
tar -xzf cri-dockerd-$VERSION.amd64.tgz
install -o root -m 755 cri-dockerd/cri-dockerd /usr/bin/cri-dockerd

# 安装 systemd 服务
curl -LO https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.service
curl -LO https://raw.githubusercontent.com/Mirantis/cri-dockerd/master/packaging/systemd/cri-docker.socket
mv cri-docker.* /etc/systemd/system/

systemctl daemon-reload
systemctl enable --now cri-docker.service


cat <<EOF | sudo tee /etc/crictl.yaml
runtime-endpoint: unix:///var/run/cri-dockerd.sock
image-endpoint: unix:///var/run/cri-dockerd.sock
timeout: 10
debug: false
EOF
```


# 步骤二：安装 kubeadm、kubelet、kubectl

```shell
yum install -y kubelet kubeadm kubectl
systemctl enable kubelet
```

# 步骤三：使用 kubeadm 初始化 Master 节点

版本号：v1.28.15 根据实际安装的 k8s 版本填写
```shell
kubeadm init \
  --apiserver-advertise-address=192.168.110.122 \
  --image-repository registry.aliyuncs.com/google_containers \
  --cri-socket=unix:///var/run/cri-dockerd.sock \
  --pod-network-cidr=10.244.0.0/16
```

如果有过安装 k8s 集群 
```shell
kubeadm reset -f --cri-socket=unix:///var/run/cri-dockerd.sock

ip link delete cni0 || true

ip link delete flannel.1 || true

rm -rf /etc/cni /etc/kubernetes /var/lib/etcd /var/lib/kubelet /var/lib/cni

# 确认没有端口冲突
lsof -i :10250

```

## 遇到的问题

```shell
[root@localhost ~]# kubeadm init \
>   --apiserver-advertise-address=192.168.110.122 \
>   --image-repository registry.aliyuncs.com/google_containers \
>   --kubernetes-version v1.29.0 \
>       --pod-network-cidr=10.244.0.0/16
[init] Using Kubernetes version: v1.29.0
[preflight] Running pre-flight checks
[WARNING KubernetesVersion]: Kubernetes version is greater than kubeadm version. Please consider to upgrade kubeadm. Kubernetes version: 1.29.0. Kubeadm version: 1.28.x
[WARNING Swap]: swap is enabled; production deployments should disable swap unless testing the NodeSwap feature gate of the kubelet
[WARNING FileExisting-tc]: tc not found in system path
error execution phase preflight: [preflight] Some fatal errors occurred:
[ERROR CRI]: container runtime is not running: output: time="2025-05-15T13:42:59+08:00" level=fatal msg="validate service connection: CRI v1 runtime API is not implemented for endpoint \"unix:///var/run/containerd/containerd.sock\": rpc error: code = Unimplemented desc = unknown service runtime.v1.RuntimeService"
, error: exit status 1
[ERROR FileContent--proc-sys-net-bridge-bridge-nf-call-iptables]: /proc/sys/net/bridge/bridge-nf-call-iptables does not exist
[preflight] If you know what you are doing, you can make a check non-fatal with `--ignore-preflight-errors=...`
To see the stack trace of this error execute with --v=5 or higher
```

解决思路
```shell
# 确认 containerd 版本 ≥ 1.6.x
containerd --version
# 确认 CRI 插件已启用

#检查 containerd 配置文件 /etc/containerd/config.toml 中是否启用了 CRI 插件：
cat /etc/containerd/config.toml
# [plugins."io.containerd.grpc.v1.cri"]
# 如果 cri 插件不存在，新生成配置文件并启用 CRI：
containerd config default > /etc/containerd/config.toml
# 确保 SystemdCgroup 是 true
sed 's/SystemdCgroup = false/SystemdCgroup = true/' > /etc/containerd/config.toml
sudo systemctl restart containerd
  
# 确保 kubelet 也使用 containerd：
touch /etc/default/kubelet
vi /etc/default/kubelet
# 写入以下内容
KUBELET_EXTRA_ARGS=--container-runtime=remote --container-runtime-endpoint=unix:///run/containerd/containerd.sock

# 重启服务：
systemctl daemon-reexec
systemctl restart kubelet

# [ERROR FileContent–proc-sys-net-bridge-bridge-nf-call-iptables]: 不存在
# 这是一个内核参数缺失问题，通常是系统没有加载 br_netfilter 模块。
yum install -y bridge-utils
# 加载内核模块
modprobe br_netfilter

# 设置必要参数
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
echo '1' > /proc/sys/net/bridge/bridge-nf-call-ip6tables

# 永久生效（可选）
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables=1
net.bridge.bridge-nf-call-ip6tables=1
EOF

sysctl --system
```


# 步骤四：配置 kubectl 命令访问

```shell
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
```

# 步骤五：部署网络插件（例如 Flannel 或 Calico）
```shell
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
```

# 步骤六：在 Node 节点加入集群

在其他节点执行 join 命令：

```shell
kubeadm join 192.168.0.10:6443 --token <token> \
  --discovery-token-ca-cert-hash sha256:<hash>
```
#  步骤七：验证集群状态
```shell
kubectl get nodes
kubectl get pods -A
```

wget https://mirrors.tuna.tsinghua.edu.cn/elrepo/elrepo/el8/x86_64/RPMS/elrepo-release-8.4-2.el8.elrepo.noarch.rpm