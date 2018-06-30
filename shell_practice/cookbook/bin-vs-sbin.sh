#!/bin/bash

rm -f /tmp/vs

for file in $(ls -1 /bin)
do
	if [ -f "/sbin/$file" ]
	then
		echo "[[[ FOUND ]]] $file" >> /tmp/vs
	else
		echo "oops $file" >> /tmp/vs 
	fi
done

cat /tmp/vs | sort

rm -f /tmp/vs
