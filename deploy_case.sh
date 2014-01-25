#!/usr/bin/env bash 
#===============================================================================
#          FILE: deploy.sh
#         USAGE: ./deploy.sh 
#   DESCRIPTION: Interactive automated deployment script
#       OPTIONS: ---
#  REQUIREMENTS: ---
#         NOTES: ---
#        AUTHOR: Eric Wu, mesopodamia@gmail.com
#       CREATED: 01/25/2014 11:44
#      REVISION:  ---
#===============================================================================

function example001() {
	echo "example001"
}

function example002() {
	echo "example002"
}

function example003() {
	echo "example003"
}

echo " ----------------------------------------"
echo " "
echo "Please insert function Number:"
echo " "
echo "  [1] function001 "
echo "  [2] function002 "
echo "  [3] function003 "
echo " "
echo " ----------------------------------------"
read Number;

case "$Number" in
    1)
        example001 && exit 0;
		;;
	2)
        example002 && exit 0;
		;;
	3)
        example003 && exit 0;
		;;
    *)
        echo $"Usage: $0 {function001|function002|function003}"
        exit 2
esac