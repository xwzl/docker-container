linux下执行shell脚本时报错：-bash: ./a.sh: /bin/bash^M: bad interpreter: No such file or directory。

原因是windows下的文件是dos格式，即每一行结尾以\r\n来标识，而linux下的文件是unix格式，行尾则以\n来标识。

查看文件格式有三种方法：

1. cat -A <filename>，如果输出结果中行末尾是^M$，则是dos格式，如果行末尾只是$，则是unix格式。
2. vim <filename>，编辑文件，执行“:set ff”,若执行结果为fileformat=dos则为dos格式，若执行结果为fileformat=unix则为unix格式。
3. od -t x1 <filename>，以16进制查看文件，若输出结果中存在“0d 0a”则为dos格式，如果只有“0a”则为unix格式。其中“0d”即为回车符“\r”，“0a”即为换行符“\n”。

修改文件格式有三种方式：

1. sed -i "s/\r//" <filename>或sed -i "s/^M//" <filename>，直接将回车符替换为空字符串。
2. vim <filename>，编辑文件，执行“: set ff=unix”，将文件设置为unix格式，然后执行“:wq”，保存退出。
3. dos2unix <filename>或busybox dos2unix <filename>，如果提示command not found，可以使用前两种方法。
