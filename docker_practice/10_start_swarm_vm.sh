#!/bin/bash
 
source common/colors.sh

eval $(docker-machine env myvm1)

docker-machine ls

cd app/

docker stack deploy -c docker-compose.yml getstartedlab

docker stack ps getstartedlab