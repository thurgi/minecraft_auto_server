#!/bin/bash

DATE=`date +%Y%m%d`
path_jar=/opt/minecraft/minecraft_server
pid_file=/opt/minecraft/pid
log_file="/opt/minecraft/logs/minecraft_server${DATE}.log"

java -Xmx2048M -Xms2048M -jar $path_jar nogui > $log_file &
echo "$!" > $pid_file

