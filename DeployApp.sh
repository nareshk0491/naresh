#!/bin/sh

#check whether nodejs is installed in the linux machine

node --version 2> /dev/null

if [ $? -eq 0 ]
then
	echo "NodeJs is already installed in the machine"
else
	echo "Install NodeJs"
	yum install -y nodejs
fi

#check whether maildev package is installed in Linux machine

maildev --version 2> /dev/null

if [ $? -eq 0 ]
then
	echo "Maildev is already installed in the machine"
else
	echo "Install MailDev package"
	npm install -g maildev
	maildev
fi











