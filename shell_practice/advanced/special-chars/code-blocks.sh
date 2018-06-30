#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/special-chars.html
# what : code blocks
#
#
# @author papa
####################################

FILE=/etc/group

{
	read line1
	read line2
} < $FILE

echo "First line in $FILE is:"
echo "$line1"
echo
echo "Second line in $FILE is:"
echo "$line2"

exit 0
