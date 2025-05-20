#!/bin/bash
set -e

export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"

K8S_VERSION="1.33.1"
CNI_VERSION="1.7.1"
CRICTL_VERSION="1.30.0"
CONTAINERD_VERSION="1.7.13"
ARCH="amd64"
DOWNLOAD_DIR="./k8s-offline"

mkdir -p $DOWNLOAD_DIR/{bin,images}

echo "[1/5] 下载 kubeadm、kubelet、kubectl..."
cd $DOWNLOAD_DIR/bin
curl -LO https://dl.k8s.io/release/v$K8S_VERSION/bin/linux/$ARCH/kubeadm
curl -LO https://dl.k8s.io/release/v$K8S_VERSION/bin/linux/$ARCH/kubelet
curl -LO https://dl.k8s.io/release/v$K8S_VERSION/bin/linux/$ARCH/kubectl
chmod +x kube*

echo "[2/5] 下载 cri-tools..."
curl -LO https://github.com/kubernetes-sigs/cri-tools/releases/download/v$CRICTL_VERSION/crictl-v$CRICTL_VERSION-linux-$ARCH.tar.gz

echo "[3/5] 下载 CNI plugins..."
curl -LO https://github.com/containernetworking/plugins/releases/download/v$CNI_VERSION/cni-plugins-linux-$ARCH-v$CNI_VERSION.tgz

echo "[4/5] 下载 containerd..."
curl -LO https://github.com/containerd/containerd/releases/download/v$CONTAINERD_VERSION/containerd-$CONTAINERD_VERSION-linux-$ARCH.tar.gz


echo "[5/5] 下载 kubeadm 初始化所需镜像..."

#kubeadm config images list --kubernetes-version 1.33.1

# 拉取所需镜像 https://github.com/kubernetes/kubernetes/blob/master/CHANGELOG/CHANGELOG-1.32.md
images=$(kubeadm config images list --kubernetes-version v$K8S_VERSION)
#运行不了，手动替换
#images="registry.k8s.io/kube-apiserver:v1.33.1
#        registry.k8s.io/kube-controller-manager:v1.33.1
#        registry.k8s.io/kube-scheduler:v1.33.1
#        registry.k8s.io/kube-proxy:v1.33.1
#        registry.k8s.io/coredns/coredns:v1.11.3
#        registry.k8s.io/pause:3.10
#        registry.k8s.io/etcd:3.5.21-0"

for img in $images; do
    echo "$img"
    docker pull --platform linux/amd64 $img
    fname=$(echo $img | sed 's|.*/\([^:]*\):.*|\1|').tar
    docker save -o $DOWNLOAD_DIR/images/$fname $img
done

echo "✅ 所有资源已保存到 $DOWNLOAD_DIR 目录。"