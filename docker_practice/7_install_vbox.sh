#!/bin/bash
 
source common/colors.sh

# echo "deb https://download.virtualbox.org/virtualbox/debian disco contrib" >> /etc/apt/sources.list

sudo apt-get -y update
sudo apt-get install virtualbox

curl -L https://github.com/docker/machine/releases/download/v0.16.1/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

docker-machine --version