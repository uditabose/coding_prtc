#!/bin/bash

PS3="0 inits > "
FLIST=$(ls -1)

select F in $FLIST
do
	echo "--------- Running $F -------"
	PS3="$((i++)) inits > "
	"./$F" "$@"
done
