#!/bin/bash
#
#################
#Name: Vandan Savla
#Date:10/09/2024
#Version: 1
#
# This script will monitor the resources of aws services
#################


#set -x
#set -o
#set -e
#
logfile="/tmp/aws_resource_log.log"

#touch "$logfile"


if [ ! -e "$logfile" ]; then
	 touch "$logfile"
	echo "Log file Created..."
fi
{


       
	echo "Log For $(date)"
#echo "Log for $(date +'%Y-%m-%d')"
 echo "-------------------------------------------------------"
 echo " "
 echo "Listing all the Users"
 echo "-------------------------------------------------------"
 aws iam list-users | jq '.Users[]' | jq '.UserName, .CreateDate'
 echo ""	

 echo "-------------------------------------------------"
 echo " "
 echo "Listing all the s3 buckets "
 echo "------------------------------------------------ "
 aws s3 ls
 echo " "
 
 echo "--------------------------------------------------"
 echo " "
 echo "Listing all the ec2 instances along with their states"
 echo "----------------------------------------------------"
 aws ec2 describe-instances | jq '.Reservations[].Instances[]'  | jq '.InstanceId, .State.Name'  
 echo " "
 echo "------------------------------------------------------"
 echo " "

} >> "$logfile"

echo "Loggged in the $logfile file."
