#!/bin/bash
 
source common/colors.sh

docker-machine ls

docker-machine start myvm1
docker-machine start myvm2

docker-machine ssh myvm1 "docker node ls"

eval $(docker-machine env myvm1)

cd app/
docker stack deploy -c docker-compose.yml getstartedlab

docker stack ps getstartedlab
