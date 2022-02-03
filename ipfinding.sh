#!/bin/bash

if [ "$1" == "" ]
then
echo "Not a valid ip please."
echo "syntax: ./ipfinding.sh 192.168.43 enter like this"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi