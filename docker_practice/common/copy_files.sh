#!/bin/bash

source colors.sh

log_header "copying files to destination machines"

ARGS="$@"

if [[ -z "${ARGS// }" ]]; then
    echo  "No file found"
    exit -1
fi

DEST_SRV='dev1'
DEST_DIR='/home/papa/spaces/dumpspace/'
echo $(basename "$ff")
fname=$(basename "$ff")

for ff in "$@"; do
    log_warning "copying $ff"
    if [[ -f $ff ]]; then
        scp $ff $DEST_SRV:$DEST_DIR/$fname
    else
        scp -r $ff $DEST_SRV:$DEST_DIR/$fname
    fi
done

