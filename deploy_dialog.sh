#!/usr/bin/env bash 
#===============================================================================
#                 FILE: deploy.sh
#                USAGE: ./deploy.sh 
#   DESCRIPTION: Interactive automated deployment script
#          OPTIONS: ---
#  REQUIREMENTS: ---
#                NOTES: ---
#               AUTHOR: Eric Wu, mesopodamia@gmail.com
#          CREATED: 01/25/2014 11:44
#         REVISION:  ---
#===============================================================================

command -v dialog
if [[ $? != 0 ]]; then
 	yum install -y dialog
fi 	

function example001() {
        echo "example001"
}

function example002() {
        echo "example002"
}

function example003() {
        echo "example003"
}

if dialog --title "Auto Deploy System" --radiolist "Choose one function" 20 60 14 1 "function001" on 2 "function002" off 3 "function003" off 2>output; then
        select=`cat output`
        if [ $select -eq 1 ]; then
                example001
        elif [ $select -eq 2 ]; then
                example002
        elif [ $select -eq 3 ]; then
                example003
        else
                echo "Your select is wrong!!! please try again!"
   fi
fi