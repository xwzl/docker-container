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

echo -e "${RED_COLOR}---> create [mysql]directory start.${RES}"
if [ ! -d "./mysql/" ]; then
mkdir -p ./mysql/config ./mysql/data ./mysql/init
fi

echo -e "${RED_COLOR}---> create [nacos]directory start.${RES}"
if [ ! -d "./nacos/" ]; then
mkdir -p ./nacos/cluster-logs/nacos1 ./nacos/cluster-logs/nacos2 ./nacos/cluster-logs/nacos3 \
         ./nacos/init.d/  ./nacos/env/
fi

echo -e "${RED_COLOR}---> create [seata]directory start.${RES}"

if [ ! -d "./GREEN_COLOR/" ]; then
mkdir -p ./seata/conf/
fi



echo -e "${BLUE_COLOR}===> directory authorize success.${RES}"

# 移动配置文件

echo -e "${RED_COLOR}---> move [mysql]config file start.${RES}"
if [ -f "./my.cnf" ]; then
mv ./my.cnf ./mysql/config
mv ./nacos.sql ./mysql/init
fi

chmod -R 777  ./mysql/data

echo -e "${RED_COLOR}---> move [nacos]config file start.${RES}"
if [ -f "./custom.properties" ]; then
mv ./nacos-hostname.env ./nacos/env/nacos-hostname.env
mv ./custom.properties ./nacos/init.d/
fi


echo -e "${RED_COLOR}---> move [seata]config file start.${RES}"

if [ -f "./application.yml" ]; then
mv ./registry.conf ./seata/conf/registry.conf
mv ./registry.properties ./seata/conf/registry.properties
mv ./application.yml ./seata/conf/application.yml
fi

echo -e "${BLUE_COLOR}===> move config files success.${RES}"

echo -e "${GREEN_COLOR}>>>>>>>>>>>>>>>>>> The End <<<<<<<<<<<<<<<<<<${RES}"

# 部署项目
echo -e "${BLUE_COLOR}==================> Docker deploy Start <==================${RES}"
#docker-compose up --build -d
