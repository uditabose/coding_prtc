#!/bin/bash
####################################
# URL  : http://tldp.org/LDP/abs/html/internalvariables.html
# what : Builtin variables:
#        variables affecting bash script behavior
#
# @author papa
####################################

# bash path
echo $BASH

# bash env
echo $BASH_ENV

# subshell level
echo $BASH_SUBSHELL

# current bash process
echo $$
echo $BASHPID
ps ax | grep bash

# bash version info
for n in 0 1 2 3 4 5
do
  echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done

# bash version
echo $BASH_VERSION

# search path
echo $CDPATH

# top of directory stack
echo $DIRSTACK

# default editor
echo $EDITOR

# effective user ID
echo $EUID

# current function
echo $FUNCNAME

# exclusion from globing
echo $GLOBIGNORE

# current user group
echo $GROUPS

# home
echo $HOME

# hostname
echo $HOSTNAME

# host type
echo $HOSTTYPE

# file separator
echo $IFS

# Ignore EOF: how many end-of-files 
#   control-D) the shell will ignore before logging out.
echo $IGNOREEOF

# order of filename matching
echo $LC_COLLATE

# This internal variable controls character
#   interpretation in globbing and pattern matching.
echo $LC_CTYPE

# this line number
echo $LINENO

# machine type
echo $MACHTYPE

# previous working directory
echo $OLDPWD

# OS type
echo $OSTYPE

# path of binaries
echo $PATH

# exit statuses of foreground pipe
echo $PIPESTATUS
echo ${PIPESTATUS[*]}
ls | bogus_command | wc
echo ${PIPESTATUS[@]}

# A variable holding a command 
# to be executed just before the 
# primary prompt, $PS1 is to be 
# displayed.
echo $PROMPT_COMMAND

# main prompt
echo $PS1 

# secondary prompt
echo $PS2 

# tertiary prompt
echo $PS3 

# quartenary prompt
echo $PS4 

# default value for a read command
echo $REPLY
























