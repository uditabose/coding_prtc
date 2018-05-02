#!/bin/bash
 
source colors.sh

log_header 'configure redis with configmap'

#CONFIG_URL='https://github.com/kubernetes/website/blob/master/docs/tutorials/configuration/configmap/redis/redis-config'

log_section 'create config map from URL'

kubectl create configmap redis-config --from-file=redis-config
# see what happened
kubectl get configmap redis-config -o yaml

log_section 'create a pod'
kubectl create -f redis_pod.yaml

# visit the cli
kubectl exec -it redis-cm redis-cli