#!/bin/bash
 
source ../common/colors.sh

log_header "balance 'em out"

export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template --template '{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT

for (( i = 0; i < 10; i++ )); do
    sleep 1
    curl $(minikube ip):$NODE_PORT
done


