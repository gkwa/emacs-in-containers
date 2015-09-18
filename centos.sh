#!/bin/sh

distro=centos
distro=fedora
distro=ubuntu

dt=$(date +%s)
name=${distro}_$dt

curl -O https://raw.githubusercontent.com/TaylorMonacelli/emacs-in-containers/wip/init.sh
curl -O https://raw.githubusercontent.com/TaylorMonacelli/emacs-in-containers/wip/stow.sh
curl -O https://raw.githubusercontent.com/TaylorMonacelli/emacs-in-containers/wip/emacs.sh
docker rm $name 2>/dev/null
docker run --name $name -v `pwd`:/root -it $distro sh -c 'exec sh -x /root/init.sh; sh -x /root/stow.sh'
