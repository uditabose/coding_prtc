#!/bin/bash

source common/colors.sh

cd app
docker build --tag=friendlyhello . &

docker image ls

docker run -p 8080:80 friendlyhello &
