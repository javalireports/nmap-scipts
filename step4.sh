#!/usr/bin/bash

while read cmd;
do
gnome-terminal --tab -e "$cmd"
done  <  final_tcp_nmap.txt
