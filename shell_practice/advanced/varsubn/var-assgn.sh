#!/bin/bash
####################################
# URL  : http://www.tldp.org/LDP/abs/html/varsubn.html
# what : variable assignment basic
#
#
# @author papa
####################################

# integer stuff
a=2334
let "a += 1"
echo "a = $a"
echo

# turn integer stuff in string stuff
b=${a/23/BB}

echo "b = $b"
declare -i b    # this is declaring b as integer
echo "b = $b"
echo

c=BB34
echo "c = $c"
d=${c/BB/23}

echo "d = $d"
echo

# try stuff with null variable
e=''
echo "e = $e"
let "e += 1"
echo "e = $e"
echo

# undeclared variable
echo "f = $f"
let "f += 1"
echo "f = $f"
echo

# some math stuff on undeclared variable
let "f /= $undecl_var"

let "f /= 0"

exit $?










