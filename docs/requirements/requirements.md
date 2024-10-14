# Initial Requirements for Project Awanggan

## Overview
Project Awanggan is designed to build a complete AWS infrastructure from scratch using best practices in cloud architecture, security, and cost optimization. This document outlines the initial requirements for the project.

## Requirements

### Infrastructure
- AWS account setup with Control Tower.
- Core infrastructure resources: VPC, EC2, RDS, S3.
- Separate environments for `dev`, `prod`, and `staging`.

### Security
- Use of AWS Vault for secure credential management.
- IAM roles and policies for access control.
- Security Groups and NACLs for network security.
- KMS for encryption of sensitive data.

### Monitoring & Logging
- CloudWatch for infrastructure monitoring.
- Centralized logging using Graylog.

### CI/CD
- GitLab CE for managing pipelines.
- GitLab Runners on EC2 or ECS for job execution.
- Terraform for Infrastructure as Code (IaC).

### Cost Optimization
- Use of AWS Budgets and cost alerts.
- Spot Instances for cost-effective compute resources.
- S3 lifecycle policies for storage management.

## Next Steps
- Define architecture and core infrastructure components in Terraform.
- Implement CI/CD pipelines and GitOps using GitLab and ArgoCD.
