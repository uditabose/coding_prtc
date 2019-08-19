#!/bin/bash
 
source common/colors.sh

docker-machine create --driver virtualbox myvm1
docker-machine create --driver virtualbox myvm2

docker-machine ls

myvm1ip=$(docker-machine ip myvm1)
myvm2ip=$(docker-machine ip myvm2)


log_header "initiate swarm"
docker-machine ssh myvm1 "docker swarm init --advertise-addr $myvm1ip" > swarm
