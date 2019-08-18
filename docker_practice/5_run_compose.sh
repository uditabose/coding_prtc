#!/bin/bash
 
source common/colors.sh

cd app/

docker swarm init --advertise-addr 192.168.0.17

docker stack deploy -c docker-compose.yml getstartedlab

docker service ls

docker stack services getstartedlab

docker service ps getstartedlab_web

docker container ls -q

curl -4 http://localhost:4000

docker stack ps getstartedlab

# change replicas, re-run
# docker stack deploy -c docker-compose.yml getstartedlab

# Swarm initialized: current node (8arbwl9i49cl1fvamzxsy4y0p) is now a manager.

# To add a worker to this swarm, run the following command:

#     docker swarm join --token SWMTKN-1-0uegmz3znk04kf9iwa6vl0gdye2fj461uckrve4ndcljsehigu-ec7pwd7f6v0a97cb6rfy2oepp 192.168.0.17:2377

# To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.


