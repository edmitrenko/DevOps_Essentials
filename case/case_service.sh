#!/bin/bash

case $1 in
	start)
		echo "Service started"
		sleep 9999
		;;
	stop)
		echo "Servise is stopped"
		kill -TERM -$(pgrep -o case_service.sh)
		#kill -- -$(ps -o pgid= $PID | grep -o [0-9]*)
		;;
	restart)
		echo "Servise is stopped"
		#shift
       		#$0 stop
        	kill -TERM -$(pgrep -o case_service.sh)
		$0 start &
		echo "Servise is started"
		#sleep 9999
		;;
	*)
		echo "usage: my_service.sh [start|stop|restart]"
		;;
esac

		



