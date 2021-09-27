broker 配置文件

    记得给日志和存储文件开放权限，不然 broker 启动报错

该配置文件中  brokerIP1 的 ip 地址，云对应外网地址和本地 ip 地址（注意：127.0.0.1 连接报错）

初始化目录

    sh init.sh

windows

    docker-compose up -d

m1 单机

    docker-compose -f m1-single-docker-compose.yml up -d

m1 集群
    
    docker-compose -f m1-docker-compose.yml up -d





    sh init.sh
    # intel or amd
    docker-compose up -d   
    # m1 
    docker-compose -f m1-docker-compose.yml up -d
