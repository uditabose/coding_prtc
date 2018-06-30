#!/bin/bash

case $1 in 
	bye)
	   echo "Fine, adieu"
	   ;;
	hi|hello)
	   echo "Nice to see you"
	   ;;
	what*)
	   echo Whatever
	   ;;
	*)
	   echo 'Huh ?'
	   ;;
esac
