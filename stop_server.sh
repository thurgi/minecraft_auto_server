#!/bin/bash

pid_file=/opt/minecraft/pid

echo "---------------------------------------------------------------------------------------------"
pid=$(head -n 1 $pid_file)
echo "kill -9 $pid"
kill -9 $pid
rm $pid_file

