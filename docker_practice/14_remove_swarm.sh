#!/bin/bash
 
source common/colors.sh

docker stack rm getstartedlab

docker swarm leave --force
