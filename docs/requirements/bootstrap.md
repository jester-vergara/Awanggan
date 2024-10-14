# Bootstrap Guide: Initial Setup for Project Awanggan

This document outlines the manual steps required to set up the foundational infrastructure and tools for Project Awanggan. Once the environment is bootstrapped, the project will transition to automated infrastructure provisioning using Terraform and GitLab CI/CD.

## Prerequisites
1. **AWS Account**: Ensure you have an AWS account set up with sufficient permissions to create resources.
2. **GitHub Account**: A GitHub account is required to store the repository and manage version control.
3. **Local Machine Setup**: 
   - **VS Code** installed on your local machine.
   - **Git** and **Git Extensions** for version control.
   - **Terraform** installed via Chocolatey or manual install.

---

## Step 1: AWS Account Setup

- **Sign up for an AWS account** if you don’t have one.
- Enable **AWS Control Tower** for multi-account governance.
- Configure **IAM users and roles** with least-privilege access.


## Step 3: Install Required Tools Using Chocolatey

To streamline the setup process, we use **Chocolatey**, a Windows package manager, to install the essential tools required for the project.

### Install Commands

Run the following commands in your terminal to install all required tools:

```bash
# Git (for version control)
choco install git

# Terraform (for Infrastructure as Code)
choco install terraform

# AWS CLI (for interacting with AWS services)
choco install awscli

# AWS Vault (for securely managing AWS credentials)
choco install aws-vault

# Docker (if needed for containerized development environments)
choco install docker

# AWS Vault Setup 
choco install aws-vault


### AWS Vault Setup (Optional)
- Install AWS Vault to securely manage access to AWS credentials:
  ```bash
  choco install aws-vault
