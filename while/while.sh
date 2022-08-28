#!/bin/bash

while true; do
    read -r -p "Enter command: " answer
    case $answer in
        ls* ) ls
		;;
        pwd ) pwd
		;;
	hi ) echo Hello $USER
		;;
	exit ) exit
		;;
        * ) echo "Please enter the correct command"
		;;
    esac
done
