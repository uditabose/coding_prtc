#!/bin/bash

echo '####### For Loop #######'
echo
for str in one two three four; do
	echo $str
done

echo '####### While Loop #######'
echo
FILE='/etc/passwd'

line_count=1
while ls -l '/etc' | grep -q passwd ; do
	echo "  passwd "
	#line_count=$line_count+1
	break
done

until ls -l '/etc' | grep -q passwd ; do
	echo " passwd "
done


echo "######### Counting for #######"

for ((  i=0; i < 10; i++ )); do echo $i; done

echo "######### Counting while ######"

while (( COUNT < 20 )); do echo $COUNT; let COUNT++; done

echo "######### Counting seq for ######"
echo $(date)
for i in $(seq 1.0 0.1 1000.0)
do 
	echo $i
done
echo $(date)
echo "######### Counting seq while ######"

seq 2.0 0.2 2000.0 | \
	while read fp
	do 
		echo $fp
	done
echo $(date)
