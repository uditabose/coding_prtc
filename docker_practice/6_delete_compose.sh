#!/bin/bash
 
source common/colors.sh

cd app/

docker stack rm getstartedlab

docker swarm leave --force
