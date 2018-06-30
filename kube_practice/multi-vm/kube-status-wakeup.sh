#!/bin/bash
 
source ../common/colors.sh

SERVER_TYPE="$1"

if [[ -z "$SERVER_TYPE" ]]; then
    SERVER_TYPE="master"
fi

if [[ "$SERVER_TYPE" = "master" ]]; then
    docker_status=$(systemctl status docker | grep active | grep -c running)

    if [[ docker_status -ne 1 ]]; then
        log_warning "Docker was not running : $docker_status, starting now"
        sudo systemctl starting docker
    fi

    log "starting kube master"
    sudo kubeadm init > kube-init 2>&1

elif [[ "$SERVER_TYPE" = "slave" ]]; then
    if [[ -f "join_node" ]]; then
        slave_command=$(cat "join_node")
        $($slave_command)

    else
        log_error "no command found to join node"
    fi
else
    log_error "It can be only master or slave types of servers"
fi




