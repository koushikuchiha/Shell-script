#!/bin/bash
# $1, $2, $3, $@
echo "All the variables: $@"
echo "number of variables: $#"
echo "Script Name: $0"
echo "Present Working Directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running the script: $USER"
echo "Process id of current script: $$"
sleep 60 &
echo "Process id of last command in background: $!"
echo "Exit status of pervious command: $?"
