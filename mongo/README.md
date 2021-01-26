**mongodb 分片机制原理**

一、**概念**：

分片（sharding）是指将数据库拆分，将其分散在不同的机器上的过程。将数据分散到不同的机器上，不需要功能强大的服务器就可以存储更多的数据和处理更大的负载。基本思想就是将集合切成小块，这些块分散到若干片里，每个片只负责总数据的一部分，最后通过一个均衡器来对各个分片进行均衡（数据迁移）。通过一个名为 mongos 的路由进程进行操作，mongos 知道数据和片的对应关系（通过配置服务器）。大部分使用场景都是解决磁盘空间的问题，对于写入有可能会变差，查询则尽量避免跨分片查询。使用分片的时机：

1，机器的磁盘不够用了。使用分片解决磁盘空间的问题。

2，单个 mongod 已经不能满足写数据的性能要求。通过分片让写压力分散到各个分片上面，使用分片服务器自身的资源。

3，想把大量数据放到内存里提高性能。和上面一样，通过分片使用分片服务器自身的资源。

**二、分片集群架构（来自官网）**

**![](https://img2020.cnblogs.com/i-beta/1664502/202003/1664502-20200327165731875-1436976758.png)**

上图中主要有如下所述三个主要组件：

**Shard: 分片服务器**

用于存储实际的数据块，实际生产环境中一个 shard server 角色可由几台机器组个一个 replica set 承担，防止主机单点故障

**Config Server: 配置服务器**

mongod 实例，存储了整个 分片群集的配置信息，其中包括 chunk 信息。

**Query Routers: 前端路由**

客户端由此接入，且让整个集群看上去像单一数据库，前端应用可以透明使用

这里的两个 shard(分片) 相当于 mongodb 节点服务器，内部的块是将 order 集合再切割的结果，随着数据量的的增大, 分片会分割和迁移, 以满足数据的均匀分布。

**请求分流**：通过路由节点将请求分发到对应的分片和块中

**数据分流**：内部提供平衡器保证数据的均匀分布，这是数据平均分布式、请求平均分布的前提

**块的拆分**：3.4 版本块的最大容量为 64M 或者 10w 的数据，当到达这个阈值，触发块的拆分，一分为二

**块的迁移**：为保证数据在分片节点服务器分片节点服务器均匀分布，块会在节点之间迁移。一般相差 8 个分块的时候触发

**MongoDB 分片优势：**

减少单个分片需要处理的请求数，提高群集的存储容量和吞吐量 比如，当插入一条数据时，应用只需要访问存储这条数据的分片 减少单分片存储的数据，提高数据可用性，提高大型数据库查询服务的性能。 当 MongoDB 单点数据库服务器存储和性能成为瓶颈，或者需要部署大型应用以充分利用内存时，可以使用分片技术

**环境准备**

docker、docker-compose、lunux。版本问题应该不大，我用的是 Docker version 18.09.0, build 4d60db4、docker-compose version 1.23.0-rc3, buildea3d406e、centos7.2。

本套 Mongodb 搭建分片集群是基于 mongodb4.0.5, 直接从官方镜像仓库拉取 docker pull mongo:4.0.5 即可

完成准备之后，docker images 看一下，mongodb. 镜像是否搞定了。

![](https://img2020.cnblogs.com/i-beta/1664502/202003/1664502-20200327170328943-1507596859.png)

**1. 编写 yaml 文件，这里我命名 fates-mongo-compose.yaml**


```
version: '2'
services:
  shard1:
    image: mongo:4.0.5
    container_name: mongo_shard1
    # --shardsvr: 这个参数仅仅只是将默认的27017端口改为27018,如果指定--port参数，可用不需要这个参数
    # --directoryperdb：每个数据库使用单独的文件夹
    command: mongod --shardsvr --directoryperdb --replSet shard1
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/shard1:/data/db
    privileged: true
    mem_limit: 16000000000
    networks:
      - mongo   

  shard2:
    image: mongo:4.0.5
    container_name: mongo_shard2
    command: mongod --shardsvr --directoryperdb --replSet shard2
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/shard2:/data/db
    privileged: true
    mem_limit: 16000000000
    networks:
      - mongo

  shard3:
    image: mongo:4.0.5
    container_name: mongo_shard3
    command: mongod --shardsvr --directoryperdb --replSet shard3
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/shard3:/data/db
    privileged: true
    mem_limit: 16000000000
    networks:
      - mongo

  config1:
    image: mongo:4.0.5
    container_name: mongo_config1
    # --configsvr: 这个参数仅仅是将默认端口由27017改为27019, 如果指定--port可不添加该参数
    command: mongod --configsvr --directoryperdb --replSet fates-mongo-config --smallfiles
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/config1:/data/configdb
    networks:
      - mongo

  config2:
    image: mongo:4.0.5
    container_name: mongo_config2
    command: mongod --configsvr --directoryperdb --replSet fates-mongo-config --smallfiles
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/config2:/data/configdb
    networks:
      - mongo

  config3:
    image: mongo:4.0.5
    container_name: mongo_config3
    command: mongod --configsvr --directoryperdb --replSet fates-mongo-config --smallfiles
    volumes:
      - /etc/localtime:/etc/localtime
      - /data/base/fates/mongo/config3:/data/configdb
    networks:
      - mongo

  mongos:
    image: mongo:4.0.5
    container_name: mongo_mongos
    # mongo3.6版默认绑定IP为127.0.0.1，此处绑定0.0.0.0是允许其他容器或主机可以访问
    command: mongos --configdb fates-mongo-config/config1:27019,config2:27019,config3:27019 --bind_ip 0.0.0.0 --port 27017
    ports:
     - 27017:27017
    volumes:
      - /etc/localtime:/etc/localtime
    depends_on:
      - config1
      - config2
      - config3
    networks:
      - mongo    
networks:
  mongo:
    external: true

```


具体含义看注释

**2. 编写 deploy-and-start.sh 脚本**


```
#!/bin/sh

docker-compose -f fates-mongo-compose.yaml up -d

#睡眠两分钟，等待mongodb所有容器起来之后将它们配置加入分片
sleep 30s

docker-compose -f fates-mongo-compose.yaml exec config1 bash -c "echo 'rs.initiate({_id: \"fates-mongo-config\",configsvr: true, members: [{ _id : 0, host : \"config1:27019\" },{ _id : 1, host : \"config2:27019\" }, { _id : 2, host : \"config3:27019\" }]})' | mongo --port 27019"
docker-compose -f fates-mongo-compose.yaml exec shard1 bash -c "echo 'rs.initiate({_id: \"shard1\",members: [{ _id : 0, host : \"shard1:27018\" }]})' | mongo --port 27018"
docker-compose -f fates-mongo-compose.yaml exec shard2 bash -c "echo 'rs.initiate({_id: \"shard2\",members: [{ _id : 0, host : \"shard2:27018\" }]})' | mongo --port 27018"
docker-compose -f fates-mongo-compose.yaml exec shard3 bash -c "echo 'rs.initiate({_id: \"shard3\",members: [{ _id : 0, host : \"shard3:27018\" }]})' | mongo --port 27018"
docker-compose -f fates-mongo-compose.yaml exec mongos bash -c "echo 'sh.addShard(\"shard1/shard1:27018\")' | mongo"
docker-compose -f fates-mongo-compose.yaml exec mongos bash -c "echo 'sh.addShard(\"shard2/shard2:27018\")' | mongo"
docker-compose -f fates-mongo-compose.yaml exec mongos bash -c "echo 'sh.addShard(\"shard3/shard3:27018\")' | mongo"

```

该脚本流程详细描述一下

1）先启动 mongodb 分片容器组

2) 睡眠 30s 等待容器全部完全启动（可能不需要 30s）

3) 操作 config1，配置 config 副本集，将 config * 容器组作为 config 角色, 此时 config1 作为 config 副本集里的主节点

4) 操作 shard1、shard2、shard3，将 shard * 容器组作为 shard 角色。

5) 将 shard1、shard2、shard3 加入分片集群组。

**3. 运行**

执行脚本

# sh deploy-and-start.sh 等待脚本启动完成，如果出现 connect fail 报错，检查一下网络，再次启动一次脚本即可。

到这里，单机版的 mongodb 的分片集群，就搭建好了，一般真正的运维环境，Mongodb 集群应该分布在不同的机器，但是只要熟悉这套部署方案的机制，只要稍作修改，就可以实现。

但是，Mongodb 库默认是不会将你的表进行分片的，是需要手动配置的，如果不配置，数据都会全部存放在主节点，不会均匀分配到各个分片。

现在手动将一个表做分片，就拿 um_t_staff 表作为例子

// 前提是分片的片键必须是索引

sh.enableSharding("'mongodbDemo")// 先让当前库支持分片

sh.shardCollection('mongodbDemo.um_t_staff',{timestamp:1})// 当前集合加入分片，递增片键 (timestamp 已经作为索引了)

db.adminCommand("flushRouterConfig")// 刷新路由

sh.enableBalancing("mongodbDemo.um_t_staff")// 让当前分片支持平衡

sh.startBalancer() // 开启平衡

sh.status({"verbose":1})// 查看详细分片信息

db.um_t_staff.getShardDistribution()// 查看该表分片数据信息

https://www.cnblogs.com/xiaofengxzzf/p/12100730.html