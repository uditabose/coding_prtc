#!/bin/bash
 
source ../common/colors.sh

log_header 'service stuff'

# get services
kubectl get services

# expose service
kubectl expose deployments/kubernetes-bootcamp --type "NodePort" --port 9092

log_section 'get the details'
# get services
kubectl get services

# get the details
kubectl describe services/kubernetes-bootcamp

# export node port
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template --template '{{(index .spec.ports 0).nodePort}}')

# see the fun
curl $(minikube ip):$NODE_PORT

