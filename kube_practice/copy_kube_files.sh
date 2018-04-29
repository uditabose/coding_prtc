#!/bin/bash

ARGS="$@"

if [[ -z "${ARGS// }" ]]; then
    echo  "No file found"
    exit -1
fi

# change file permission
for ff in "$@"; do
    chmod +x "$ff"
done

DEST_HOST='dev1'
DEST_DIR='/media/papa/surplus/spaces/workspace/kube_practice'
for ff in "$@"; do
    if [[ -f $ff ]]; then
        scp "$ff" $DEST_HOST:$DEST_DIR
    fi
done 

