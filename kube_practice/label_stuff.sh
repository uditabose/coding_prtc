#!/bin/bash
 
source colors.sh

log_header 'label stuff'

# the whole deployment
kubectl describe deployment

# select pods 
kubectl get pods -l run=kebernetes-bootcamp

# select services
kubectl get services -l run=kebernetes-bootcamp

# pod name
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME

# add a label
kubectl label pod $POD_NAME app=v1

# pod details
kubectl describe pods -l app=v1

# delete service
kubectl delete service -l run=kebernetes-bootcamp

# select services
kubectl get services

# export node port
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template --template '{{(index .spec.ports 0).nodePort}}')
# verify service removed
curl $(minikube ip):$NODE_PORT

# is it available within the pod?
kubectl exec -ti $POD_NAME curl localhost:9090