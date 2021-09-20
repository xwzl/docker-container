# 1. 关于首次启动问题

由于 mysql 初始化脚本，首次运行速度较慢，导致 Nacos 无法启动，因此在 Mysql 启动完成后，需要手动重启 nacos。

或者等 MySQL 完成后，重启启动一下

# 2. Spring Cloud 无法访问 seata 的 ip 地址

必须指定外网 ip 地址

    environment:
        # spring-cloud 无法访问容器中的 ip,配置外网映射地址
        SEATA_IP: 192.168.1.10

# 3. 关于 Seata 配置问题

按照官网配置的环境变量和配置文件，无法正常启动，改为映射 application.yml 文件。