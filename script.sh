#!/bin/bash

# echo command
echo hello world

name="Infiniti"
echo "Welcome, ${name}."

# read
read -p "Please enter your name: " name
echo "The name you entered is $name."

# if-elif-else statement
if [ $name == "Infiniti" ]
then
  echo "You are Infiniti."
elif [ $name == "Lexus" ]
then
  echo "You are Lexus."
else
  echo "You are someone else."
fi

# comparison
# -eq -ne -gt -ge -lt -le
a=5
b=7
if [ $a -le $b ]
then
  echo "$a is less than or equal to $b."
else
  echo "$a is greater than $b."
fi

# file conditions
# -d file True if the file is a directory.
# -e file True if the file exists (this is not particularly portable, thus -f is generally used.)
# -f file True if the provided string is a file.
# -g file True if the group id is set on a file.
# -r file True if the file is readable.
# -s file True if the file has a non-zero size.
# -u      True if the user id is set on a file.
# -w      True if the file is writable.
# -x      True if the file is executable.

file="./script.sh"
if [ -f $file ]
then
  echo "$file is a file."
else
  echo "$file is not a file."
fi

# case statement
read -p "Are you 21 years of age or older? Y/N: " answer
case $answer in
  [Yy] | [Yy][Ee][Ss])
    echo "You can drink beer. ^_^"
    ;;
  [Nn] | [Nn][Oo])
    echo "You are not allowed to drink any alcohol."
    ;;
  *)
    echo "Invalid answer."
    ;;
esac
