#!/bin/bash


# ############################
# Author: Moahmmed Tariq
#
# Date: 12-03-2025
#
# Version: v1
#
# Script to track aws resources.
#############################
set -x

# List s3 buckets
echo "S3 Bucketes"
aws s3 ls >> resources.txt

# list ec2 instances
echo "EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resources.txt

# List lambda
echo "LAMBDA Functions"
aws lambda list-functions >> resources.txt

#list users
echo "Users"
aws iam list-users >> resources.txt
