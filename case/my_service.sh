#!/bin/bash

case $1 in
	start)
		echo "Service started"
		sleep 9999
		;;
	stop)
		echo "Servise is stopped"
		kill -TERM -$(pgrep -o my_service.sh)
		#kill -- -$(ps -o pgid= $PID | grep -o [0-9]*)
		;;
	restart)
		echo "Servise is stopped"
		kill -TERM -$(pgrep -o my_service.sh)
		echo "Servise is started"
		sleep 9999
		#. $0
		;;
	*)
		echo "usage: my_service.sh [start|stop|restart]"
		;;
esac

		



