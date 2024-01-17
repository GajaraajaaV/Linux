#!/bin/bash

##########
#Author: Gaja
#Purpose: Get arguments from cmdline, print debug statements for each line of script.
##########

:<<'END_COMMENT'
Concepts being used -
1. Multiline comments. 
2. Passing arguments from commandline.
3. Usage of set command.
4. Setting xtrace for debug statements.
5. Usage of echo.
6. Usage of printf.
END_COMMENT

set -x
echo "The list of files in $PWD are as below: "
ls $PWD
printf "Going to write the same into the file %s in location %s\n" $2 $1
ls $PWD > $1/$2.csv