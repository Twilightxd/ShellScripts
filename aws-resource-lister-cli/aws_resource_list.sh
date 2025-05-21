#!/bin/bash


#############################################################################
# Author: iTwili8-Manas (Orginal Author - Abhishek Veeramalla)
# Version: v0.0.1

# Description: This script helps DevOps beginners to list AWS resources for a given service and region.
# It acts as a basic automation tool using AWS CLI for multi-service inspection.

# Below are the services that are supported by this script:
#   1. EC2         2. RDS           3. S3
#   4. CloudFront  5. VPC           6. IAM
#   7. Route53     8. CloudWatch    9. CloudFormation
#  10. Lamda       11. SNS         12. SQS
#  13. DyanmoDB    14. EBS         15. CloudTrail

# The script will prompt user to enter the AWS region and the services for which teh resources need to be listed.
# Usage: ./aws_resource_list.sh <aws_region> <aws_service>
# Example: ./aws_resource_lisr.sh ap-south-1 ec2
#############################################################################



# Step 1: Validate input arguments
# If the number of arguments passed is not equal to 2, show usage help and exit.
if [ $# -ne 2 ]; then
        echo "./aws_resource_list.sh <aws_region> <aws_service>"
        echo "./aws_resource_list.sh ap-south-1 ec2>"
        exit 1
fi

# Step 2: Store command line arguments in variables
aws_region=$1                                                   # First argument is the AWS region
aws_service=$(echo "$2" | tr '[:upper:]' '[:lower:]')           # Convert service name to lower case for standardization

# Step 3: Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
        echo "AWS CLI is not installed. Please install it before running the script."
        exit 1
fi

# Step 4: Check if AWS CLI is configured (looks for ~/.aws directory)
if [ ! -d ~/.aws ]; then
        echo "AWS CLI is not configured. Please run 'aws configure' and try again."
        exit 1
fi

# Step 5: Resource listing logic using 'switch_case' for different AWS services
# Can also done using if..else, but the logic will be more complex and longer execution time.
# The AWS CLI commands can be fetched from - AWS CLI Documentation. Simply search for the desired service and lookup commands and arguments.

case $aws_service in                                            # Since we want to use lower case, '$aws_service' is used instead of '$2'
        ec2)
                echo "Listing EC2 Instances in $aws_region"
                aws ec2 describe-instances --region "$aws_region"
                ;;

        rds)
                echo "Listing RDS Instances in $aws_region"
                aws rds describe-db-instances --region "$aws_region"
                ;;

        s3)
                echo "Listing S3 Buckets in $aws_region(Note: S3 is global, region flag is optional)"
                aws s3api list-buckets
                ;;

        cloudfront)
                echo "Listing CloudFront Distributions"
                aws cloudfront list-distributions
                ;;

        vpc)
                echo "Listing VPCs in $aws_region"
                aws ec2 describe-vpcs --region "$aws_region"
                ;;

        iam)
                echo "Listing IAM Users(Note: IAM is global, region flag is optional)"
                aws iam list-users
                ;;

        route53)
                echo "Listing Route53 Hosted Zones (Note: Route53 is global)"
                aws route53 list-hosted-zones
                ;;

        cloudwatch)
                echo "Listing CloudWatch Alarms in $aws_region"
                aws cloudwatch describe-alarms --region "$aws_region"
                ;;

        cloudformation)
                echo "Listing CloudFormation Stacks in $aws_region"
                aws cloudformation describe-stacks --region "$aws_region"
                ;;

        lambda)
                echo "Listing Lambda Functions in $aws_region"
                aws lamda list-functions --region "$aws_region"
                ;;

        sns)
                echo "Listing SNS Topics in $aws_region"
                aws sns list-topics --region "$aws_region"
                ;;

        sqs)
                echo "Listing SQS Queues in $aws_region"
                aws sqs list-queues --region "$aws_region"
                ;;

        dynamodb)
                echo "Listing DynamoDB Tables in $aws_region"
                aws dynamodb list-tables --region "$aws_region"
                ;;

        ebs)
                echo "Listing EBS Volumes in $aws_region"
                aws ec2 describe-volumes --region "$aws_region"
                ;;

        cloudtrail)
                echo "Listing CloudTrails in $aws_region"
                aws cloudtrail describe-trails --region "$aws_region"
                ;;

        *)
                echo "Invalid service. Please enter a supported AWS service name."
                exit 1
                ;;
esac
