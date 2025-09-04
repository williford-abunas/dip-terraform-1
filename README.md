# AWS Multi-AZ Infrastructure with Terraform

This project provisions a highly available, multi-availability zone AWS infrastructure for containerized applications with automated CI/CD deployment capabilities.

## 🏗️ Architecture Overview

The infrastructure includes:
- **VPC** with public and private subnets across 2 availability zones
- **Application Load Balancer** for distributing traffic
- **Private EC2 instances** with Docker pre-installed
- **NAT Gateways** for secure outbound internet access
- **ECR repository** for Docker image storage
- **IAM roles** for secure access via Session Manager

## 🔧 Infrastructure Components

### Networking
- **1 VPC** with custom CIDR block
- **2 Public Subnets** (different AZs) for load balancer
- **2 Private Subnets** (different AZs) for EC2 instances
- **1 Internet Gateway** for public internet access
- **2 NAT Gateways** for private subnet internet access
- **Route Tables** with appropriate routing rules

### Compute
- **2 EC2 instances** in private subnets with Docker pre-installed
- **Security Groups** with least-privilege access
- **IAM Role** for Session Manager access and ECR permissions

### Load Balancing
- **Application Load Balancer** with health checks
- **Target Groups** for distributing traffic to EC2 instances

### Container Registry
- **ECR Repository** for storing Docker images
