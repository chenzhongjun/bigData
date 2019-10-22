##########################################################################
# File Name: import_data.sh
# Author: amoscykl
# mail: amoscykl980629@163.com
# Created Time: Sun Jan 20 10:48:34 2019
#########################################################################
#!/bin/zsh
PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin
export PATH

while read line
do
    curl -XPOST 192.168.3.12:9200/ai/cases -H "application/json" -d '$line'
done <   opendata.jsonl
