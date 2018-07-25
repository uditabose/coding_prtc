#!/bin/bash

source colors.sh

log_header "copying files to kubernetes machines"

ARGS="$@"

if [[ -z "${ARGS// }" ]]; then
    echo  "No file found"
    exit -1
fi

MASTER='kbprtc'
SLAVE1='kbmin1'
SLAVE2='kbmin2'

DEST_DIR='/home/papa/spaces/workspace/kube_practice'
for ff in "$@"; do
    if [[ -f $ff ]]; then
        chmod +x "$ff"
        log_warning "copying $ff"
        scp "$ff" $MASTER:$DEST_DIR
        scp "$ff" $SLAVE1:$DEST_DIR
        scp "$ff" $SLAVE2:$DEST_DIR
    fi
done 

