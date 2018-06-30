#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/special-chars.html
# what : save output
#
#
# @author papa
####################################

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]; then
    echo "Usage : `basename $0` rpm-file"
    exit $E_NOARGS
fi

{
    # Begin code block
    echo
    echo "Archive Description:"
    rpm -qpi $1
    echo
    echo "Archive Listing:"
    rpm -qpl $1
    echo
    rpm -i --test $1
    if [ "$?" -eq $SUCCESS ]; then
        echo "$1 can be installed"
    else
        echo "$1 can not be installed"
    fi
    echo
} > "$1.log"

echo "Results of rpm test in file $1.log"

exit