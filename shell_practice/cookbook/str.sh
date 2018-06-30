#!/bin/bash

VAR1="  05  "
VAR2="5"


printf "%s" "do they -eq as equal ? "

if [ "$VAR1" -eq "$VAR2" ]; then
	echo "Mathematically equal"
else 
	echo "Not really"
fi

printf "%s" "do they = as equal ? "

if [ "$VAR1" = "$VAR2" ]; then
	echo "They are string equal"
else
	echo "No way!"
fi

