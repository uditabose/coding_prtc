#!/bin/bash
####################################
# URL : http://tldp.org/LDP/abs/html/sha-bang.html
# what : an extra sha-bang line
#
# @author papa
####################################

echo "Part 1 of script."
a=1

#!/bin/bash
# This does *not* launch a new script.
# interpreted as comment

echo "Part 2 of script."
echo $a  # Value of $a stays at 1.