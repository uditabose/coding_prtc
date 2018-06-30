#!/bin/bash

counter=0
for mod in `lsmod`
do
	
	let rem=counter%3
	if [ $rem == 0 ]
	then
		echo "            MODULE :: $mod           "
		echo "-------------------------------------"
		modinfo "$mod" | tee -a "/tmp/mdls"
		echo "-------------------------------------"
		echo
	fi
	let counter=counter+1
done
