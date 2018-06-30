#!/bin/bash

TEMP1=$(mktemp /tmp/im1.XXXXXX)
TEMP2=$(mktemp /tmp/im2.XXXXXX)

cat /proc/interrupts > $TEMP1
sleep 2
cat /proc/interrupts > $TEMP2

diff $TEMP1 $TEMP2

rm -f $TEMP1 $TEMP2
