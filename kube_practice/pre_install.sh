#!/bin/bash


# install virtualbox, jq
sudo apt install -y virtualbox jq

# install kubectl
KUBECTL_URL='https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubectl'
sudo apt install -y apt-transport-https
curl -Lo kubectl "$KUBECTL_URL" && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

# verify
kubernetes version