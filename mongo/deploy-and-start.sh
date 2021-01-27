#!/bin/sh

docker-compose -f docker-compose.yml up -d

#睡眠两分钟，等待mongodb所有容器起来之后将它们配置加入分片
sleep 30s


docker-compose -f docker-compose.yml exec shard1 bash -c "echo 'rs.initiate({_id: \"shard1\",members: [{ _id : 0, host : \"shard1:27018\" }]})' | mongo --port 27018"
docker-compose -f docker-compose.yml exec shard2 bash -c "echo 'rs.initiate({_id: \"shard2\",members: [{ _id : 0, host : \"shard2:27018\" }]})' | mongo --port 27018"
docker-compose -f docker-compose.yml exec shard3 bash -c "echo 'rs.initiate({_id: \"shard3\",members: [{ _id : 0, host : \"shard3:27018\" }]})' | mongo --port 27018"
docker-compose -f docker-compose.yml exec mongos bash -c "echo 'sh.addShard(\"shard1/shard1:27018\")' | mongo"
docker-compose -f docker-compose.yml exec mongos bash -c "echo 'sh.addShard(\"shard2/shard2:27018\")' | mongo"
docker-compose -f docker-compose.yml exec mongos bash -c "echo 'sh.addShard(\"shard3/shard3:27018\")' | mongo"