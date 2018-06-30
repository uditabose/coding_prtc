#!/bin/bash
####################################
# URL  :
# what : create a bash source file 
#        from template
#
# @author papa
####################################

if [[ ! -d "$1" ]]; then
    mkdir -p "$1"
fi

cp 'bash.template' "$1/$2.sh"
chmod +x "$1/$2.sh"