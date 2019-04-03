#!/bin/bash

#echo command
echo hello world

name="Infiniti"
echo "Welcome, ${name}."

#read
read -p "Please enter your name: " name
echo "The name you entered is $name."

#if-elif-else statement
if [ $name == "Infiniti" ]
then
  echo "You are Infiniti."
elif [ $name == "Lexus" ]
then
  echo "You are Lexus."
else
  echo "You are someone else."
fi
