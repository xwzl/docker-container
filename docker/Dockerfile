FROM centos:7

# 维护者信息，已经被废弃
#MAINTAINER "xuweizhi 62424423@qq.com"
# MAINTAINER 迁移到 LABEL
LABEL maintainer="xuweizhi 62424423@qq.com"

# 环境变量
ENV REDIS_HOME="/usr/local/redis" REDIS_VERSION="6.0.7" BASE_DIR="/root/base"

# 重网络下载文件并且接下
ADD https://xuweizhialiyunoss.oss-cn-beijing.aliyuncs.com/docker/redis-6.0.9.tar.gz /usr/local
#ADD https://download.redis.io/releases/redis-6.0.9.tar.gz /usr/local

RUN cd /usr/local && tar -vxzf ./redis-6.0.9.tar.gz && mv ./redis-6.0.9 ./redis
RUN cd $REDIS_HOME && ls -al

#COPY ./redis $REDIS_HOME
#COPY ./redis-install.sh $REDIS_HOME
#RUN ls -al $REDIS_HOME
#RUN sh $REDIS_HOME/redis-install.sh

RUN chmod -R 777 $REDIS_HOME
#RUN yum install -y gcc gcc-c++ make openssl openssl-devel

#RUN yum -y update
RUN yum install -y gcc make

RUN yum -y install centos-release-scl
RUN yum -y install devtoolset-9-gcc devtoolset-9-gcc-c++ devtoolset-9-binutils
RUN scl enable devtoolset-9 bash
RUN echo "source /opt/rh/devtoolset-9/enable" >> /etc/profile
RUN source ~/bash
RUN gcc -v
#RUN echo "source /opt/rh/devtoolset-9/enable" >>/etc/profile

WORKDIR /usr/local/redis
RUN make && make PREFIX=/usr/local/redis install
RUN mkdir -p /usr/local/redis/conf/
RUN cp /usr/local/redis/redis.conf  /usr/local/redis/conf/
RUN sed -i  '68s/127.0.0.1/0.0.0.0/' /usr/local/redis/redis.conf
RUN sed -i  '87s/protected-mode yes/protected-mode no/' /usr/local/redis/redis.conf

# ./ 相对于最近的一个 WORKDIR 路径，下面的 ./src == /usr/local/src/
#WORKDIR ${REDIS_HOME}
EXPOSE 6379/tcp

ENTRYPOINT ["$REDIS_HOME/src/redis-server","$REDIS_HOME/redis.conf"]
