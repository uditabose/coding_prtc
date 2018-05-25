#!/bin/bash
 
source ../common/colors.sh

log_header 'scaling up deployment'

kubectl get deployments

# scale up
kubectl scale deployments/kubernetes-bootcamp --replicas=4

# get the scaled node properties
kubectl get pods -o wide

# see the 'damage' on the deployment
kubectl describe deployments/kubernetes-bootcamp