#!/bin/bash

##########
#Author: Gaja
#Purpose: Get arguments from cmdline, print debug statements for each line of script.
##########
####Milestone#1####
:<<'END_COMMENT'
Milestones Covered -
1. Multiline comments. 
2. Usage of set command.
3. Passing arguments from commandline.
4. Usage of echo.
5. Usage of printf.
6. Read an argument from user in runtime and print.
7. Read an argument from user in runtime that has spaces in it and print it (with and without quotes around the arguments)
8. Read an argument from user and append string to it and print.
8. Declaring an array and inserting values into it.
END_COMMENT

####Milestone#2####
#set -x
####Milestone#4####
echo "The list of files in $PWD are as below: "
ls $PWD
####Milestone#3and5####
printf "Going to write the same into the file %s in location %s\n" $2 $1
ls $PWD > $1/$2.csv

echo "Please enter a username: "
####Milestone#6####
read username
printf "Hello %s \n" "$username"

####Milestone#7####
echo "Please enter a word with spaces: "
read word1
echo "Printing the entered word with spaces... Note that the printf command does not have the argument enclosed in quotes."
## The below will print the 2 words in 2 separate lines since the ${word1} is not enclosed within quotes.
printf "Hello %s \n" ${word1}
echo "Printing the same word with spaeces... Note that the printf command now has the argument enclosed inside of quotes!!!"
## The below will print the same 2 words in same line.
printf "Hello %s \n" "${word1}"


####Milestone#8####
echo "Whose laptop is this?"
read laptop_owner
echo "This is ${laptop_owner}'s laptop"
printf "This is %s's laptop" ${laptop_owner}

