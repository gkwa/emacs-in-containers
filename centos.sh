#!/bin/sh

if dnf --version >/dev/null 2>&1
then 
	dnf install curl

elif yum --version >/dev/null 2>&1
then
	yum install curl

elif apt-get --version >/dev/null 2>&1
then
	apt-get -y -qq update
	apt-get -y -qq install curl
fi

# stow
curl -o stow-install.sh https://raw.githubusercontent.com/TaylorMonacelli/gnu-stow-install/master/install.sh
sh -x stow-install.sh

# emacs
curl -o emacs-install-generic.sh https://raw.githubusercontent.com/TaylorMonacelli/emacs_build/emacsgeneric/emacs-install-generic.sh
sh -x emacs-install-generic.sh
