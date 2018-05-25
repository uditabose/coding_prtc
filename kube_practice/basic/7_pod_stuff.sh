#!/bin/bash
 
source ../common/colors.sh

log_header 'pod related '

# pod list
kubectl get pods

# get POD_NAME
export POD_NAME=$(kubectl get pods -o go-template \
                    --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
curl http://localhost:9091/api/v1/namespaces/default/pods/$POD_NAME/proxy

log_section 'logs from the pod'
# logs of the pod
kubectl logs $POD_NAME

# execute a command in the pod
kubectl exec $POD_NAME env

# get in the pod bash
(kubectl exec -ti $POD_NAME bash)