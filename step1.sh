#!/usr/bin/bash

 
while read ip;
do
echo "nmap -n -Pn -sS -g 53 --stats-every 3m --max-retries 1  --max-scan-delay 20 --defeat-rst-ratelimit -T4 -p1-65535 $service $ip -oN $ip-tcp.txt" >> cmd_tcp.txt 
done < live_hosts.txt
