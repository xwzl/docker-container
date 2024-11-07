docker exec confluence-srv java -jar /var/agent/atlassian-agent.jar \
    -d \
    -p conf \
    -m 626244232@qq.com \
    -n 626244232@qq.com \
    -o fix \
    -s 192.168.124.17


docker exec confluence java -jar /var/agent/atlassian-agent.jar \
    -d \
    -p conf \
    -m xx@qq.com \
    -n xx@qq.com \
    -o fix \
    -s 191.168.110.72

 docker exec confluence java -jar /var/agent/atlassian-agent.jar \
     -d \
     -p conf \
     -m xx@qq.com \
     -n xx@qq.com \
     -o fix \
     -s   10.0.16.7


https://github.com/haxqer/confluence