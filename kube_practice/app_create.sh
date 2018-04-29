#!/bin/bash
 
source colors.sh

log_header 'deployment and application access'

log_section 'kube deployment'

# create deployment
kubectl run kubernetes-bootcamp \
    --image=gcr.io/google-samples/kubernetes-bootcamp:v1 \
    --port=8080

# verify
kubectl get nodes
kubectl get deployments

log_section 'proxy creation'

# create a public proxy
kubectl proxy &

# verify
curl http://127.0.0.1:8081/version

log_section 'proxy creation'

export POD_NAME=$(kubectl get pods -o go-template \
                    --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

echo "POD = $POD_NAME"

curl http://localhost:8001/api/v1/proxy/namespaces/default/pods/$POD_NAME/