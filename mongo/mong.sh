#mkdir -p /data/shard1
#mkdir -p /data/shard1second1
#mkdir -p /data/shard1second2
#mkdir -p /data/shard2
#mkdir -p /data/shard2second1
#mkdir -p /data/shard2second2

#touch /data/shard1/mongod.log
#touch /data/shard1second1/mongod.log
#touch /data/shard1second2/mongod.log
#touch /data/shard2/mongod.log
#touch /data/shard2second1/mongod.log
#touch /data/shard2second2/mongod.log

for i in {1..2}; do

  r_path=./data/shard
  mkdir -p "${r_path}${i}"
  touch "${r_path}${i}/mongod.log"
  for j in {1..2}; do
    mkdir -p "${r_path}${i}second${j}"
    touch "${r_path}${i}second${j}/mongod.log"
  done
done

# 启动分片实例
mongod --bind_ip 0.0.0.0 --replSet shard1 --dbpath ./data/shard1 --logpath ./data/shard1/mongod.log --port 27010 --fork --shardsvr
mongod --bind_ip 0.0.0.0 --replSet shard1 --dbpath ./data/shard1second1 --logpath ./data/shard1second1/mongod.log --port 27011 --fork --shardsvr
mongod --bind_ip 0.0.0.0 --replSet shard1 --dbpath ./data/shard1second2 --logpath ./data/shard1second2/mongod.log --port 27012 --fork --shardsvr

# 进入 mongo 客户端
# rs.initiate(
# {_id:"shard1",
#    "members":[
#                {"_id":0,"host":"192.168.208.128:27010"},
#                {"_id":1,"host":"192.168.208.128:27011"},
#                {"_id":2,"host":"192.168.208.128:27012"}
#                ]
# });
# 查看集群状态
# rs.status();

# 配置 config 复制集
mkdir -p ./data/config    ./data/configsecond1     ./data/configsecond2
touch  ./data/config/mongod.log     ./data/configsecond1/mongod.log    ./data/configsecond2/mongod.log

mongod --bind_ip 0.0.0.0 --replSet config --dbpath ./data/config  --logpath ./data/config/mongod.log --port 37010   --fork   --configsvr
mongod --bind_ip 0.0.0.0 --replSet config --dbpath ./data/configsecond1 --logpath ./data/configsecond1/mongod.log --port 37011   --fork   --configsvr
mongod --bind_ip 0.0.0.0 --replSet config --dbpath ./data/configsecond2  --logpath ./data/configsecond2/mongod.log --port 37012   --fork   --configsvr

# mongo --port 37010
#rs.initiate(
#{_id:"config",
#    "members":[
#                {"_id":0,"host":"192.168.208.128:37010"},
#                {"_id":1,"host":"192.168.208.128:37011"},
#                {"_id":2,"host":"192.168.208.128:37012"}
#                ]
#});

mkdir ./data/mongos/
touch ./data/mongos/mongos.log
#  启动mongos 实例，需要指定配置服务器的地址列表
mongos --bind_ip 0.0.0.0 --logpath ./data/mongos/mongos.log --port 4000 --fork --configdb config/192.168.208.128:37010,192.168.208.128:37011,192.168.208.128:37012

mongo --port 4000

# sh.addShard("shard1/192.168.208.128:27010,192.168.208.128:27011,192.168.208.128:27012");
# 查看分片状态
# sh.status();


#首先需要 启用数据库分片
#sh.enableSharding("库名");
#如：
#sh.enableSharding("order");
#
#sh.shardCollection("库名.集合名",{_id: "hashed"});
#sh.shardCollection("order.account",{_id: "hashed"});

#db.adminCommand("flushRouterConfig")// 刷新路由
#sh.enableBalancing("mongodbDemo.um_t_staff")// 让当前分片支持平衡
#sh.startBalancer() // 开启平衡
#sh.status({"verbose":1})// 查看详细分片信息
#db.um_t_staff.getShardDistribution()// 查看该表分片数据信息

# 动态扩容
mongod --bind_ip 0.0.0.0 --replSet shard2 --dbpath ./data/shard2 --logpath ./data/shard2/mongod.log --port 27013   --fork   --shardsvr
mongod --bind_ip 0.0.0.0 --replSet shard2 --dbpath ./data/shard2second1  --logpath ./data/shard2second1/mongod.log --port 27014   --fork   --shardsvr
mongod --bind_ip 0.0.0.0 --replSet shard2 --dbpath ./data/shard2second2 --logpath ./data/shard2second2/mongod.log --port 27015   --fork   --shardsvr

#rs.initiate(
#{_id:"shard2",
#    "members":[
#                {"_id":0,"host":"192.168.208.128:27013"},
#                {"_id":1,"host":"192.168.208.128:27014"},
#                {"_id":2,"host":"192.168.208.128:27015"}
#                ]
#});

# mongo --port 4000
#sh.addShard("shard2/192.168.208.128:27013,192.168.208.128:27014,192.168.208.128:27015");

#for( var i =0;i<100; i++){
#  db.account.insert({i:i});
#}