#!/bin/bash

USERID=$( id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " $2.... $R Failure $N"
        exit 1
    else
        echo -e " $2......$G Success $N"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo -e " $R Error: you must have sudo access to execute the script $N"
    exit 1
fi
dnf list installed mysql -y
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "Installing Mysql"
else 
    echo -e " $Y Mysql is already installed $N"
fi

dnf list installed git -y
if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "Installing Git"
else 
    echo -e " $Y Git is already installed $N"
fi