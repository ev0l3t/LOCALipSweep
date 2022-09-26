#!/bin/bash

if [ "$1" == "" ]
then
echo " You forgot the ip adress!"
echo "syntax: ./ipsweep.sh *ip adress ex. 192.120.4"


else 
for ip in 'seq 1 254' ; do
ping -c 1 $1$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done 
fi

