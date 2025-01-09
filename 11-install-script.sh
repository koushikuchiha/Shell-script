#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have sudo access to execute the script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installation of Mysql....failure"
        exit 1
    else
        echo "Installation of Mysql....success"
    fi
else 
    echo "Mysql is already installed"    

dnf list installed git 
if [ $? -ne 0 ]
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installation of Git....failure"
        exit 1
    else
        echo "Installation of Git....success"
    fi
else 
    echo "Git is already installed"
    
