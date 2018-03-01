#!/bin/sh
echo "What is your name?"
read user_name
echo "Hello $user_name"
echo "I will create you a file called ${username}_file"
touch "${user_name}_file"
