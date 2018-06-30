#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/special-chars.html
# what : various braces
#
#
# @author papa
####################################

echo \"{These,words,are,quoted}\"

cat {file1,file2,file3} > combined_file

cp combined_file{,.backup}

echo {file1,file2}\ :{\ A," B",' C'}

base64_charset=( {A..Z} {a..z} {0..9} + / = )

echo $base64_charset