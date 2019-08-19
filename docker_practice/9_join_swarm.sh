#!/bin/bash
 
source common/colors.sh

docker-machine ssh myvm2 "docker swarm join --token SWMTKN-1-1z7lh3l6py86x4jx532j1fabjnxm31eydoovgd0lf556z34n2a-57rc5ebigmh39p133ju15omk0 192.168.99.100:2377"

