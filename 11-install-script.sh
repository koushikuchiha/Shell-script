#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have sudo access to execute the script"
    exit 1
fi

dnf remove mysql -y