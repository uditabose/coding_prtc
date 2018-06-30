if (( $# < 3 ))
then 
	printf "%b" "Error too few : 1\n"
fi

if [ $# -lt 3 ]
then
	printf "%b" "Error too few : 2\n"
fi

if [ $# -lt 3 ]; then
	printf "%b" "Error too few : 3\n"
fi 
