#!/bin/bash

echo ">>>>start to init master"

# 遇到命令执行结果为零，退出脚本
set -e

# create replication user

#mysql_net=$(ip route | awk '$1=="default" {print $3}' | sed "s/\.[0-9]\+$/.%/g")

MYSQL_PWD=${MYSQL_ROOT_PASSWORD} mysql -u root \
-e "CREATE USER '${MYSQL_REPLICATION_USER}'@'%' IDENTIFIED BY '${MYSQL_REPLICATION_PASSWORD}'; \
GRANT REPLICATION SLAVE ON *.* TO '${MYSQL_REPLICATION_USER}'@'%';"