#!/bin/bash

# 定义颜色
BLUE_COLOR="\033[36m"
RED_COLOR="\033[31m"
GREEN_COLOR="\033[32m"
VIOLET_COLOR="\033[35m"
RES="\033[0m"

echo -e "${BLUE_COLOR}# ######################################################################${RES}"
echo -e "${BLUE_COLOR}#                       Docker ELK Shell Script                        #${RES}"
echo -e "${BLUE_COLOR}#                       Blog: xwzl.github.io                           #${RES}"
echo -e "${BLUE_COLOR}#                       Email: lmaye@lmaye.com                         #${RES}"
echo -e "${BLUE_COLOR}# ######################################################################${RES}"

# 创建目录
echo -e "${BLUE_COLOR}---> create [elasticsearch]directory start.${RES}"
if [ ! -d "./elasticsearch/" ]; then
mkdir -p ./elasticsearch/master/conf ./elasticsearch/master/data ./elasticsearch/master/logs ./elasticsearch/master/plugins \
    ./elasticsearch/slave1/conf ./elasticsearch/slave1/data ./elasticsearch/slave1/logs ./elasticsearch/slave1/plugins\
    ./elasticsearch/slave2/conf ./elasticsearch/slave2/data ./elasticsearch/slave2/logs ./elasticsearch/slave2/plugins
fi

echo -e "${RED_COLOR}---> create [kibana]directory start.${RES}"
if [ ! -d "./kibana/" ]; then
mkdir -p ./kibana/conf ./kibana/logs
fi

 echo -e "${GREEN_COLOR}---> create [logstash]directory start.${RES}"
 if [ ! -d "./logstash/" ]; then
 mkdir -p ./logstash/conf ./logstash/logs ./logstash/yml
 fi

echo -e "${GREEN_COLOR}---> create [filebeat]directory start.${RES}"
if [ ! -d "./filebeat/" ]; then
mkdir -p ./filebeat/conf ./filebeat/logs ./filebeat/data
fi

echo -e "${VIOLET_COLOR}---> create [nginx]directory start.${RES}"
if [ ! -d "./nginx/" ]; then
mkdir -p ./nginx/conf ./nginx/logs ./nginx/www
fi

echo -e "${GREEN_COLOR}---> create [mysql]directory start.${RES}"
if [ ! -d "./mysql/"  ]; then
mkdir -p ./mysql/conf/ ./mysql/data/  ./mysql/init/
fi

echo -e "${GREEN_COLOR}---> create [nacos]directory start.${RES}"
if [ ! -d "./nacos/"  ]; then
mkdir -p ./nacos/conf/
fi

echo -e "${GREEN_COLOR}---> create [prometheus]directory start.${RES}"
if [ ! -d "./prometheus/"  ]; then
mkdir -p ./prometheus/conf/
mkdir -p ./prometheus/data/
fi


echo -e "${GREEN_COLOR}---> create [grafana]directory start.${RES}"
if [ ! -d "./grafana/"  ]; then
mkdir -p ./grafana/conf/
mkdir -p ./grafana/data/
fi


echo -e "${BLUE_COLOR}===> create directory success.${RES}"

# 目录授权(data/logs 都要授读/写权限)
echo -e "${BLUE_COLOR}---> directory authorize start.${RES}"
if [ -d "./elasticsearch/" ]; then
chmod 777 ./elasticsearch/master/data/ ./elasticsearch/master/logs/ \
    ./elasticsearch/slave1/data/ ./elasticsearch/slave1/logs/ \
    ./elasticsearch/slave2/data/ ./elasticsearch/slave2/logs
fi

if [ -d "./filebeat/" ]; then
chmod 777 ./filebeat/data/ ./filebeat/logs/
fi

if [ -d "./mysql/" ]; then
chmod 777 ./mysql/data/ ./mysql/init/
fi

echo -e "${BLUE_COLOR}===> directory authorize success.${RES}"

# 移动配置文件
echo -e "${BLUE_COLOR}---> copy [elasticsearch]config file start.${RES}"
if [ -f "./es-master.yml" ] && [ -f "./es-slave1.yml" ] && [ -f "./es-slave2.yml" ]; then
cp ./es-master.yml ./elasticsearch/master/conf
cp ./es-slave1.yml ./elasticsearch/slave1/conf
cp ./es-slave2.yml ./elasticsearch/slave2/conf
cp ./elastic-certificates.p12 ./elasticsearch/master
cp ./elastic-certificates.p12 ./elasticsearch/slave1
cp ./elastic-certificates.p12 ./elasticsearch/slave2
cp -r ./ik ./elasticsearch/master/plugins
cp -r ./ik ./elasticsearch/slave1/plugins
cp -r ./ik ./elasticsearch/slave2/plugins
fi

echo -e "${RED_COLOR}---> copy [kibana]config file start.${RES}"
if [ -f "./kibana.yml" ]; then
cp ./kibana.yml ./kibana/conf
fi

echo -e "${GREEN_COLOR}---> copy [logstash]config file start.${RES}"
if [ -f "./logstash.conf" ]; then
cp ./logstash.conf ./logstash/conf
cp ./logstash.yml ./logstash/yml
fi

echo -e "${GREEN_COLOR}---> copy [filebeat]config file start.${RES}"
if [ -f "./filebeat.yml" ]; then
cp ./filebeat.yml ./filebeat/conf
fi

echo -e "${VIOLET_COLOR}---> copy [nginx]config file start.${RES}"
if [ -f "./nginx.conf" ]; then
cp ./nginx.conf ./nginx/conf
fi

echo -e "${VIOLET_COLOR}---> copy [mysql]config file start.${RES}"
if [ -f "./my.cnf" ]; then
cp ./my.cnf ./mysql/conf
fi

echo -e "${VIOLET_COLOR}---> copy [nacos]config file start.${RES}"
if [ -f "./nacos.properties" ]; then
cp ./nacos.properties ./nacos/conf/
cp ./nacos.sql ./mysql/init/
cp ./nacos.env ./nacos/conf/
fi

echo -e "${VIOLET_COLOR}---> copy [grafana]config file start.${RES}"
if [ -f "./grafana.ini" ]; then
cp ./grafana.ini ./grafana/conf/
fi

echo -e "${VIOLET_COLOR}---> copy [prometheus]config file start.${RES}"
if [ -f "./prometheus.yml" ]; then
cp ./prometheus.yml ./prometheus/conf/
fi


echo -e "${BLUE_COLOR}===> copy config files success.${RES}"

echo -e "${GREEN_COLOR}>>>>>>>>>>>>>>>>>> The End <<<<<<<<<<<<<<<<<<${RES}"

# 部署项目
echo -e "${BLUE_COLOR}==================> Docker deploy Start <==================${RES}"
#docker-compose up --build -d
