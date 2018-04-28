#!/bin/bash
 
source colors.sh

log_header 'start minikube cluster'

minikube start

log_section 'cluster details'
kubectl cluster-info dump | jq '.' | tee cluster-info-dump
kubectl get nodes