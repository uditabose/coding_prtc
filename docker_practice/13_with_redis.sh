#!/bin/bash
 
source common/colors.sh

docker-machine ssh myvm1 "mkdir ./data"

eval $(docker-machine env myvm1)

cd app/
docker stack deploy -c docker-compose.yml getstartedlab

docker service ls
docker stack ps getstartedlab
