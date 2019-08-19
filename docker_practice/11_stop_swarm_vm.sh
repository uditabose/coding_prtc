#!/bin/bash
 
source common/colors.sh

docker stack rm getstartedlab

eval $(docker-machine env -u)

docker-machine ls