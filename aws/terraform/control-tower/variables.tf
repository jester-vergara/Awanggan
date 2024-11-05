# Variables for AWS Region and Account Emails

# AWS Region where resources will be created
variable "region" {
  description = "AWS region for deploying resources"
  type        = string
  default     = "ap-southeast-1"  # Set a default region or override in terraform.tfvars
}

