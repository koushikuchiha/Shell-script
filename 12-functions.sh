#!/bin/bash

USERID=$( id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " Installing Mysql.... Failure"
        exit 1
    else
        echo "installing Mysql......Success"
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
    VALIDATE $?
else 
    echo "Mysql is already installed"
fi

dnf list installed Git -y
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $?
else 
    echo "Git is already installed"
fi