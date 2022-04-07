# 1 下载 canal

github 地址
    
    https://github.com/alibaba/canal

releases 地址,下载 deployer、admin 和 adaptor

    https://github.com/alibaba/canal/releases

## 1.1 jdk 版本

查看 JDK 版本

    /usr/libexec/java_home -V
    # 配置环境变量
    touch .bash_profile
    source .bash_profile

环境变量
    
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home
    export PATH=$PATH:$JAVA_HOME/bin:.
    export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.

# 2 使用

主要概念 destinations 代表运行的实例，一个 destination 代表一个实例,比如 example 列表


## 2.1 tcp 使用

修改 deployer 文件 ./conf/canal.properties
        
    # tcp 模式，Java Client 交互
    canal.serverMode = tcp

    # 订阅的数据 example ,一个订阅实例为一个文件
    canal.destinations = example

修改 example/instance.properties 
    
    # 主从数据库地址
    canal.instance.master.address=1.15.19.68:3306

## 2.2 RocketMQ     

修改 deployer 文件 ./conf/canal.properties

    # tcp 模式，Java Client 交互
    canal.serverMode = rocketMQ
        
    
