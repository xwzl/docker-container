# 文件说明

命令行直接运行 logstash 配置文件

> bin/logstash -e  "input{stdin{codec=>line}}output{stdout{codec=>rubydebug}}"

命令行以配置文件运行的方式：

> bin/logstash -f logstash-filebeat.conf

文件说明：

- logstash-multiline.conf: 堆栈异常日志转换为 logstash 输出
- logstash-multiline.conf: 多行代码转换为 logstash 输出 
- logstash-stdin.conf: 标准输入转换为 logstash 输出
