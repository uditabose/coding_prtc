#!/bin/bash

#source ../common/colors.sh
source colors.sh

log_header 'installing kubernetes master'

log_section 'dependencies'
sudo apt-get update && apt-get install -y apt-transport-https
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo cat <<EOF > /etc/apt/sources.list.d/kubernetes.list  
deb http://apt.kubernetes.io/ kubernetes-xenial main  
EOF
sudo apt-get update

log_warning 'docker'
sudo apt-get install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

log_section 'real deal'
sudo apt-get install -y kubelet kubeadm kubectl 
# kubernetes-cni
# disable all swap
sudo swapoff  --all