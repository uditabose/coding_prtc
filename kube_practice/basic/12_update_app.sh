#!/bin/bash
 
source ../common/colors.sh

log_header 'update the app'

# see pods
kubectl describe pods

log_section 'updating image'
# update image
kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2

# see again
kubectl get pods

# describe service
kubectl describe services/kubernetes-bootcamp

# the node port
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT

curl $(minikube ip):$NODE_PORT

log_section 'rolls out'
# roll stuff out
kubectl rollout status deployments/kubernetes-bootcamp

# describe again
kubectl describe pods

log_section 'update image again'
kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=gcr.io/google-samples/kubernetes-bootcamp:v10

# see the goodies
kubectl get deployments

# see more
kubectl describe pods

log_section 'roll, roll, roll'
# rolls out again
kubectl rollout undo deployments/kubernetes-bootcamp

# see again
kubectl describe pods
