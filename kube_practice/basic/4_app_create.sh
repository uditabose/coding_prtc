#!/bin/bash
 
source ../common/colors.sh

log_header 'deployment and application access'

log_section 'kube deployment'

# create deployment
kubectl run kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=9090

# verify
kubectl get nodes
kubectl get deployments

log_section 'proxy creation'

# create a public proxy
kubectl proxy  --port=9091 > proxy.log &

# verify
curl http://127.0.0.1:9091/version

log_section 'proxy test'

export POD_NAME=$(kubectl get pods -o go-template \
                    --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

echo "POD = $POD_NAME"

curl http://127.0.0.1:9091/api/v1/proxy/namespaces/default/pods/$POD_NAME/