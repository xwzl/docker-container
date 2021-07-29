docker-compose 无效

    docker run -d --name mongo mongo
    docker pull registry.cn-hangzhou.aliyuncs.com/anoy/yapi
    docker run -it --rm --link mongo:mongo --entrypoint npm --workdir /api/vendors registry.cn-hangzhou.aliyuncs.com/anoy/yapi run install-server
    docker run -d --name yapi --link mongo:mongo --workdir /api/vendors -p 3000:3000 registry.cn-hangzhou.aliyuncs.com/anoy/yapi server/app.js