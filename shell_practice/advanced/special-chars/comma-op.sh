#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/special-chars.html
# what : use of comma operator
#
#
# @author papa
####################################

# links arithmetic expressions
let "t2 = ((a = 3, 15 / 3))"
echo "t2 = $t2"
echo

# find all calc in /bin and /usr/bin
for c in /{,usr/}bin/*calc; do
	if [[ -x "$c" ]]; then
		echo "$c"
	fi
done
