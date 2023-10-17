#!/bin/bash


ARGUMENT=$1


case $ARGUMENT in

	start)
	#outputs Service started message and sleeps for 9999
	sleep 9999 &
	echo "Service started"
	;;
	stop)
	#gets the PID of my_service.sh process and terminates it, then outputs Service stopped message
	PID=$(ps -A | grep sleep | awk '{print $1}')
	kill $PID
	echo "Service stopped"
	;;
	#stops and then starts the service
	restart)
	PID=$(ps -A | grep sleep | awk '{print $1}')
	kill $PID
	sleep 9999 &
	echo "Service restarted successfully" 
	;;
	help)
	echo "Usage: my_service.sh [start|stop|restart]"
	;;
	*)
	#any other argument outputs script usage information
	echo "Use start argument to start the script"
	echo "Use stop argument to stop the script"
	echo "Use restart argument to restart the script"



esac
