#!/bin/sh

#Check whether MailDev is running at regular intervals

ps -ef | grep -v grep | grep maildev 2> /dev/null

if [ $? -eq 0 ]
then
	echo "starting Maildev"
	maildev
fi
