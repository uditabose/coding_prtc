#!/bin/bash

ARGS="$@"

if [[ -z "${ARGS// }" ]]; then
    echo  "No file found"
    exit -1
fi

DEST_HOST='dev1'
DEST_DIR='/home/papa/spaces/workspace/kube_practice'
for ff in "$@"; do
    if [[ -f $ff ]]; then
        chmod +x "$ff"
        scp "$ff" $DEST_HOST:$DEST_DIR
    fi
done 

