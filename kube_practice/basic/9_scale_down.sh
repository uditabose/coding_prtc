#!/bin/bash
 
source ../common/colors.sh

log_header 'scale it down'

kubectl scale deployments/kubernetes-bootcamp --replicas=2

# see 'em
kubectl get deployments
kubectl get pods -o wide