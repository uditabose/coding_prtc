#!/bin/bash
 
#source ../common/colors.sh
source colors.sh

SERVER_TYPE="$1"

if [[ -z "$SERVER_TYPE" ]]; then
    SERVER_TYPE="master"
fi

# shut up all swaps
sudo swapoff --all

hashtoken=$(echo -n 'kube_practice' | md5sum | awk '{print $1}')
token="$(echo -n $hashtoken | cut -c 1-6).$(echo -n $hashtoken | cut -c 1-16)"

if [[ "$SERVER_TYPE" = "master" ]]; then
    docker_status=$(systemctl status docker | grep active | grep -c running)

    if [[ docker_status -ne 1 ]]; then
        log_warning "Docker was not running : $docker_status, starting now"
        sudo systemctl starting docker
    fi

    log "starting kube master"
    sudo kubeadm init --token "$token" --ignore-preflight-errors=all  > kube-init 2>&1 &

elif [[ "$SERVER_TYPE" = "slave" ]]; then
    sudo kubeadm join 192.168.0.35:6443 --token "$token"
else
    log_error "It can be only master or slave types of servers"
fi




