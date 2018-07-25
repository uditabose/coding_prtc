#!/bin/bash

# @ref : https://www.techrepublic.com/article/how-to-quickly-install-kubernetes-on-ubuntu/
# @ref : https://coreos.com/flannel/docs/latest/kubernetes.html
# @ref : https://medium.com/@Grigorkh/install-kubernetes-on-ubuntu-1ac2ef522a36
# @ref : https://medium.com/@sachin.arote1/installing-kubernetes-on-bare-metal-server-or-virtual-machine-via-kubeadm-8af39ec84562

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
sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
# disable all swap
sudo swapoff  --all

log_section 'test'

sudo kubeadm init > kube-init 2>&1

log_section 'set-up kubernetes'
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


kubectl get node  

log_warning 'taint master to run one pod for test'
kubectl taint nodes --all node-role.kubernetes.io/master-


log_section 'deploy pod network'
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml

log_section 'test again'

kubectl get node

log_header 'run nginx application'
kubectl run --image=nginx nginx-app --port=80 --env="DOMAIN=cluster"
kubectl expose deployment nginx-app --port=80 --name=nginx-http  
