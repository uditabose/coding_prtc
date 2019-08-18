#!/bin/bash

source common/colors.sh

log_header "prepare docker"

# remove docker.io related stuff
log "remove legacy docker"
sudo apt-get -y remove docker docker-engine docker.io containerd runc

log "------"
log "install dependencies"
log ""
sudo apt-get -y update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

log "------"
log "setup docker repository"
log ""
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y

log "------"
log "actually install stuff"
log ""
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

log "------"
log "verify, hello!"
sudo docker run hello-world
