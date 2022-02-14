# 1. prometheus

注意替换掉 ip 地址

    docker run -p 9090:9090 --name prometheus -v /Users/xuweizhi/Documents/root/docker-container/docker/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus

    // 密码 admin admin 
    docker run -d -p 3000:3000 --name grafana grafana/grafana-enterprise


参考 https://nacos.io/zh-cn/docs/monitor-guide.html


