#!/bin/bash

set -e

echo "1. 清理 /etc/cni/net.d/ 临时文件和无效配置..."
if [ -d /etc/cni/net.d ]; then
  find /etc/cni/net.d -type f \( -name "*.dpkg-new" -o -name "*.dpkg-old" -o -name "*.bak" \) -exec rm -f {} \;
  echo "已删除临时文件。"
else
  echo "/etc/cni/net.d 目录不存在，跳过清理。"
fi

echo "2. 重启 containerd 服务..."
systemctl restart containerd
echo "containerd 已重启。"

echo "3. 检查并启动 kubelet 服务..."
if systemctl list-unit-files | grep -q kubelet.service; then
  systemctl daemon-reload
  systemctl restart kubelet
  systemctl enable kubelet
  echo "kubelet 服务已启动并设置为开机自启。"
else
  echo "kubelet 服务未安装或未启用，请确认 kubelet 是否正确安装。"
fi

echo "4. 重置 kubeadm（清理旧初始化残留）..."
kubeadm reset -f
echo "kubeadm reset 完成。"

echo "5. 你现在可以用以下命令启动 kubeadm 初始化："
echo "   kubeadm init --config kubeadm.yaml --upload-certs"

echo "脚本执行完毕！"