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
