#!/bin/bash

####### if-elif-else #######

Cyan='\033[0;36m' 
Yellow='\033[1;33m'
End='\033[0m'

echo
echo -e $Yellow'if-elif-else'$End
echo 

not_empty='This is not empty'
numbers='8726348 is a number'

if [ -n not_empty ]
then
	echo 'That was not empty'
elif [ numbers != not_empty ]; then
	echo 'That was not equal'
fi

######## for-in #######

echo
echo -e $Yellow'for-in'$End
echo

for n in $numbers 
do
	echo -e "It is : $Cyan$n$End"
	echo
done

######## while-loop ########

echo 
echo -e $Yellow'while loop'$End
echo

while ls -l '/etc' | grep -q passwd ; do
	echo -e $Cyan"  passwd file found "$End
	break
done

######## switch-case ########                                     
    

Red='\033[0;31m'                                
echo                                                             
echo -e $Yellow'switch case'$End                                 
echo                   
                                          
the_var='red'

case $the_var in 
yellow) 
	echo -e $Yellow'Yellow Colour'$End
	;;
red)  
	echo -e $Red'Red Colour'$End
	;;
*)
	echo 'No color'
	;;
esac

