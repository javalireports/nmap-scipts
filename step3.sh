#!/usr/bin/bash
> final_tcp_nmap.txt
cmd=""
while read ip;
do
cmd=$(cat $ip-tcp.txt | grep "/tcp"| grep -v "closed" | cut -d "/" -f1 | xargs | sed  's/ /,/g')
if [$cmd -eq ""]
then
echo "$ip have no open port"
else
mkdir $ip
echo "nmap -n -Pn -g 53 -sS -sV -A -p $cmd --version-intensity 9 -oN $ip/$ip-tcp.txt $ip"  >> final_tcp_nmap.txt

fi

done < live_hosts.txt 
