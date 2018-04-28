#!/bin/bash
 
# install minikube with dependencies

source colors.sh

log_header 'minikube install'

PRE_INSTALL='pre_install.sh'
INSTALL='minikube_install.sh'
POST_INSTALL=''

# pre minikube installation
log_section 'pre installation'
if [ ! -z $PRE_INSTALL ] && [ -f $PRE_INSTALL ]; then
    source $PRE_INSTALL
else
    log_error 'pre-install file is not available'
fi


# minikube installation
log_section 'minikube installation'
if [ ! -z $INSTALL ] && [ -f $INSTALL ]; then
    source $INSTALL
else
    log_error 'install file is not available'
    exit 1
fi


# post minikube installation
log_section 'post installation'
if [ ! -z $POST_INSTALL ] && [ -f $POST_INSTALL ]; then
    source $POST_INSTALL
else
    log_error 'post-install file is not available'
fi
