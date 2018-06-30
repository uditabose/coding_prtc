#!/bin/bash

grep -v '?' try/cut | cut -c8- | \
while read FN; do echo $FN; rm -rfv "$FN"; done
