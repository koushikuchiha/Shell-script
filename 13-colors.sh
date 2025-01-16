#!/bin/bash

USERID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " $2.... Failure"
        exit 1
    else
        echo " $2......Success"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "Error: you must have sudo access to execute the script"
    exit 1
fi
dnf list installed mysql -y
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "Installing Mysql"
else 
    echo "Mysql is already installed"
fi

dnf list installed git -y
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installing Git"
else 
    echo "Git is already installed"
fi