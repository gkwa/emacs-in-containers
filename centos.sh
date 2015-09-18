#!/bin/sh

curl -O https://raw.githubusercontent.com/TaylorMonacelli/emacs-in-containers/wip/init.sh

distro=centos
distro=fedora
distro=ubuntu

dt=$(date +%s)
name=${distro}_$dt
docker rm $name 2>/dev/null
docker run --name $name -v `pwd`:/root -it $distro sh -c 'exec sh -x /root/init.sh'
