#!/bin/bash
source colors.sh
PDF_NAME="$1"

if [[ -z  "$PDF_NAME" ]]; then
    log_error "invalid PDF name"
    exit -1
fi

convert ~/Desktop/*.png -units PixelsPerInch -density 200 /Users/papa/spaces/workspace/Random/kube_practice/lfd259ckad/doc/$PDF_NAME.pdf

mv -v ~/Desktop/*.png /tmp


