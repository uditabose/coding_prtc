#!/bin/bash
cd try/
for FN in *.t
do
	mv "${FN}" "${FN%t}tash"
done
