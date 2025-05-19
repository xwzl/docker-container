# 配置
vpn server: 192.168.110.78
k8s server: 192.168.110.123,192.168.110.124,192.168.110.126
vpn test client server: 192.168.110.75

# 1. vpn 服务器

## 思路

vpn 服务配置 k8s 虚拟网路网段路由，允许 vpn 访问 k8s 节点，k8s 各节点配置流量转发。
k8s 访问vpn ip，各节点配置 vpn 虚拟网络路由，通过 vpn server 访问vpn虚拟IP。

server config 配置 k8s 路由推送,重启服务器

```shell
#运行通讯的内网路由，可以多条
push "route 192.168.110.0 255.255.255.0"

# 推送 Kubernetes Pod 网段
push "route 10.244.0.0 255.255.0.0"

# 推送 Kubernetes Service 网段（可选，视你需要而定）
push "route 10.96.0.0 255.255.0.0"
```

通过 192.168.110.123 进行路由转发，访问 10.244.0.0 网段IP服务器

```shell
# k8s 网段转发
ip route add 10.244.0.0/16 via 192.168.110.123
```
**注意：该命令临时生效。若重启会失效，请添加到 /etc/rc.local 或使用网络管理器设置静态路由。**

## 1.1 centos 

vim /etc/rc.local

```shell
ip route add 10.244.0.0/16 via 192.168.110.123
```

sudo chmod +x /etc/rc.local

## 1.2 ubuntu 配置

vim /etc/netplan/50-cloud-init.yaml
```yaml

network:
  version: 2
  ethernets:
    ens33:
      dhcp4: no
      addresses:
        - 192.168.110.123/24
      routes:
        - to: 10.244.0.0/16
          via: 192.168.110.123
      gateway4: 192.168.110.1
      nameservers:
        addresses: [8.8.8.8, 114.114.114.114]

```
sudo netplan apply

## 1.3 路由规则

```shell
# 确保 VPN 流量能转发出内网
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o ens33 -j MASQUERADE

# 允许 VPN 与 Kubernetes 网段互通
iptables -A FORWARD -i tun0 -o ens33 -s 10.8.0.0/24 -j ACCEPT
iptables -A FORWARD -i ens33 -o tun0 -d 10.8.0.0/24 -j ACCEPT
iptables -A FORWARD -s 192.168.110.0/24 -d 10.8.0.0/24 -j ACCEPT
iptables -A FORWARD -s 10.8.0.0/24 -d 192.168.110.0/24 -j ACCEPT

iptables -A INPUT -s 10.8.0.0/24 -j ACCEPT
```

开启ip转发
```shell
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sysctl -p
```

# 2. k8s 各节点

在所有 Kubernetes 节点（192.168.110.123，124，126 等）上执行，永久有效请参考 1.1 && 1.2

```shell
ip route add 10.8.0.0/24 via 192.168.110.78
```


添加路由规则

```shell
# pods 网段
iptables -A FORWARD -s 192.168.110.78 -d 10.244.0.0/16 -j ACCEPT
iptables -A FORWARD -s 10.244.0.0/16 -d 192.168.110.78 -j ACCEPT

# 添加 NAT 规则（从 VPN 到 K8s pod 网络）
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -d 10.244.0.0/16 -j MASQUERADE

# 允许转发流量
iptables -A FORWARD -s 10.8.0.0/24 -d 10.244.0.0/16 -j ACCEPT
iptables -A FORWARD -s 10.244.0.0/16 -d 10.8.0.0/24 -j ACCEPT
```

确认是否开启转发
```shell
sysctl -w net.ipv4.ip_forward=1
```

如果未开启
```shell
echo 1 > /proc/sys/net/ipv4/ip_forward
sysctl -w net.ipv4.ip_forward=1
echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
```