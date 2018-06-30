#!/bin/bash
cd try/
echo $(pwd)

for CD in *
do 
	echo "this one : $CD"
	if [[ "$CD" =~ "[:alpha:]*" ]]
	#if [[ "$CD" =~ "([[:alpha:][:blank:]]*)- ([[:digit:]]*) - (.*)$" ]]
	then
		echo Track ${BASH_REMATCH[2]} is ${BASH_REMATCH[3]}
		mv "$CD" "Track${BASH_REMATCH[2]}"
	fi
done
