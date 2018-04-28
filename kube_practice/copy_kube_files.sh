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

UBPRTC='/Users/papa/spaces/ubprtc/kube_practice'

if [[ $(df | grep -c ubprtc) == 1 ]]; then
    for ff in "$@"; do
        cp -fv "$ff" "$UBPRTC"
    done
elif [[ -d "$UBPRTC" ]]; then
    for ff in "$@"; do
        cp -fv "$ff" "$UBPRTC"
    done
else
    echo "Can't copy to $UBPRTC"
fi
