#!/bin/bash
source ../common/colors.sh
PDF_NAME="$1"
PWD=`pwd`
if [[ -z  "$PDF_NAME" ]]; then
    log_error "invalid PDF name"
    exit -1
fi

convert ~/Desktop/*.png -units PixelsPerInch -density 200 "$PWD/doc/$PDF_NAME.pdf"

mv -v ~/Desktop/*.png /tmp


