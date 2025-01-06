#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have sudo access to execute the script"
    exit 1
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then 
    echo "Installation of Mysql....failure"
else
    echo "Installation of Mysql....success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of Git....failure"
else
    echo "Installation of Git....success"
fi
