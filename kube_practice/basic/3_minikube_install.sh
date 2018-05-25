#!/bin/bash

KUBE_VERS='0.26.1'
DN_URL="https://storage.googleapis.com/minikube/releases/v$KUBE_VERS/minikube-linux-amd64"

# download and install
curl -Lo minikube $DN_URL && chmod +x minikube && sudo mv minikube /usr/local/bin/

# verify
minikube version