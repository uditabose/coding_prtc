#!/bin/bash
 
source common/colors.sh

log_header "common docker commands"

docker
docker info
docker --version
docker version
log "-----------------"

docker run hello-world
log "-----------------"

docker image ls
log "-----------------"

docker container ls --all
log "-----------------"

docker container ls
docker container ls --all
docker container ls -aq
log "-----------------"
