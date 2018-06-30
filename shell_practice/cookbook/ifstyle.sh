#!/bin/bash

if grep -q daemon /etc/passwd; then
	echo '"daemon"' in user file
else 
	echo '"big"' problem
fi
