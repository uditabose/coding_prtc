#!/bin/bash
 
source common/colors.sh

cd app/

docker swarm init --advertise-addr 192.168.0.17

docker stack deploy -c docker-compose.yml getstartedlab

docker service ls

docker stack services getstartedlab

docker service ps getstartedlab_web

docker container ls -q
