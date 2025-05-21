# 🛠️ AWS Resource Lister CLI

A beginner-friendly shell script project to help you **list and audit AWS resources** for specific services and regions using the AWS CLI.

## 🚀 What It Does

This script helps users — especially DevOps beginners — to:
- Interact with AWS using the command line
- List resources for key AWS services like EC2, S3, Lambda, RDS, etc.
- Learn AWS CLI commands with a simple, commented script
- Automate cloud inventory tasks

---

## 🧰 Features

- ✅ Supports 15 AWS services (more can be added acc to need)
- ✅ Region-specific listing where applicable
- ✅ Fully commented for learning & clarity
- ✅ Lightweight and easy to run
- ✅ Built with love and bash 🐧

---

## 📦 Supported AWS Services

| Service         | CLI Command                              |
|----------------|-------------------------------------------|
| EC2            | `describe-instances`                      |
| RDS            | `describe-db-instances`                   |
| S3             | `list-buckets`                            |
| CloudFront     | `list-distributions`                      |
| VPC            | `describe-vpcs`                           |
| IAM            | `list-users`                              |
| Route53        | `list-hosted-zones`                       |
| CloudWatch     | `describe-alarms`                         |
| CloudFormation | `describe-stacks`                         |
| Lambda         | `list-functions`                          |
| SNS            | `list-topics`                             |
| SQS            | `list-queues`                             |
| DynamoDB       | `list-tables`                             |
| EBS            | `describe-volumes`                        |
| CloudTrail     | `describe-trails`                         |

---

## 🧑‍💻 How to Use

### 📥 Step 1: Pre-requisites
- ✅ AWS CLI installed ([Install Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html))
- ✅ AWS CLI configured using `aws configure`

### 🏃 Step 2: Run the Script

```bash
chmod +x aws_resource_list.sh
./aws_resource_list.sh <aws_region> <aws_service>
```
or use -- chmod 755 aws_resource_list.sh -- depending on your required permissions

---

# 🧠 Learning Purpose

This project is designed to help:

- New DevOps learners practice shell scripting
- Understand AWS CLI usage by doing
- Build practical GitHub projects for portfolios

# 📁 Project Structure

aws-resource-lister-cli/
│  <br>
├── aws_resource_list.sh       # 🧾 The main shell script  <br>
├── README.md                  # 📘 This file!   <br>

# 👏 Credits

Originally created by Abhishek Veeramalla (Source: https://youtu.be/8nx_RLaX5gE?si=OOK0eKKd_XchJ3fM) <br>
Edited, explained, and improved by Twilightxd
