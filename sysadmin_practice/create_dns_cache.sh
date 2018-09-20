#!/bin/bash

# @see https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-caching-or-forwarding-dns-server-on-ubuntu-14-04

### Configure DNS server

# update
sudo apt -y upgrade

# install `bind`
sudo apt install -y bind9 bind9-utils bind9doc

# update config
ls -l /etc/bind
sudo nano /etc/bind/named.conf.options

# verify config file syntax
sudo named-checkconf

# restart bind9
sudo service bind9 restart

### Configure DNS client

# update DNS server
sudo nano /etc/resolv.conf