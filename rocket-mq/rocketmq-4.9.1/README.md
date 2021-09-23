broker 配置文件

    记得给日志和存储文件开放权限，不然 broker 启动报错

该配置文件中  brokerIP1 属性为当前宿主机 ip,可对外访问的


    sh init.sh
    # intel or amd
    docker-compose up -d   
    # m1 
    docker-compose -f m1-docker-compose.yml up -d