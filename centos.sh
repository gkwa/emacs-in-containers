#!/bin/sh

dt=$(date +%s)
name=centos_$dt
docker rm $name 2>/dev/null
docker run --name $name -v `pwd`:/root -it centos sh -c 'exec sh -x /root/init.sh'
