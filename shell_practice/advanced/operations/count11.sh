#!/bin/bash
####################################
# URL  : http://www.tldp.org/LDP/abs/html/ops.html
# what : increment number by 1 in 10 ways
#
#
# @author papa
####################################

n=1; echo -n "$n "

let "n = $n + 1"
echo -n "$n "

: $((n = $n + 1))
echo -n "$n "

(( n = n + 1 ))
echo -n "$n "

n=$(($n + 1))
echo -n "$n "

: $[ n = $n + 1 ]
echo -n "$n "

n=$[ $n + 1 ]
echo -n "$n "

let "n++"
echo -n "$n "

(( n++ ))
echo -n "$n "

: $(( n++ ))
echo -n "$n "

echo

exit 0

: $[ n++ ]
