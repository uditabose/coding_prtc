#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/special-chars.html
# what : use of colon or or null-op
#
#
# @author papa
####################################

:
echo $?   # 0

# same as while true :
while : 
do
   date
   break
done

: ${username=`whoami`}

: ${1?"Usage: $0 ARGUMENT"}

: ${HOSTNAME?} ${USER?} #${MAIL?}

: > data.xxx   # if not there, then created, if there, truncated

# this is a function!!!
:()
{
  echo "The name of this function is "$FUNCNAME" "
  # Why use a colon as a function name?
  # It's a way of obfuscating your code.
}

not_empty()
{
  :
} # Contains a : (null command), and so is not empty.

#not_empty()

(( var0 = var1<98?9:21 ))
echo $var1
echo $var0
