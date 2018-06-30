#!/bin/bash

if [ -z "$1" ]; then
	echo "arg is empty"
fi

if [ -n "$1" ]; then
	echo "arg is not empty"
fi
