#!/bin/bash

DIR=try/
INF=lsr
OUTF=ls

if [ -d $DIR ]
then 
	cd $DIR
	
	if [ -f $INF  -a  -w $OUTF ]; then
		cat $INF >> $OUTF
	else
		echo "Violently wrong stuff"
	fi
else
	echo "No $DIR found"
	exit 1
fi
