#!/bin/bash

pid_file=/opt/minecraft/pid

echo "---------------------------------------------------------------------------------------------"
if [ -f "$pid_file" ]; then
    echo "$pif_file exists."
    pid=$(head -n 1 $pid_file)
    echo "kill -9 $pid"
    kill -9 $pid
    rm $pid_file
fi


