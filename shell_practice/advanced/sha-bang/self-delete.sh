#!/bin/rm
####################################
# URL : http://tldp.org/LDP/abs/html/sha-bang.html
# what : this script, if ran deletes 
#        itself, so don't run it!
# 
# @author papa
####################################

WHATEVER=85

echo "This line will never print (betcha!)."

exit $WHATEVER  # Doesn't matter. The script will not exit here.
                # Try an echo $? after script termination.
                # You'll get a 0, not a 85.