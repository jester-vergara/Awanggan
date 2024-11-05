# Variables for AWS Region and Account Emails

# AWS Region where resources will be created
variable "region" {
  description = "AWS region for deploying resources"
  type        = string
  default     = "ap-southeast-1"  # Set a default region or override in terraform.tfvars
}

# Email for the Shared account
variable "shared_email" {
  description = "Email address for the Shared AWS account"
  type        = string
}

# Email for the Log Archive account
variable "log_archive_email" {
  description = "Email address for the Log Archive AWS account"
  type        = string
}

# Email for the Audit account
variable "audit_email" {
  description = "Email address for the Audit AWS account"
  type        = string
}

# Email for the Prod account
variable "prod_email" {
  description = "Email address for the Production AWS account"
  type        = string
}

# Email for the Dev account
variable "dev_email" {
  description = "Email address for the Development AWS account"
  type        = string
}

# Email for the QA account
variable "qa_email" {
  description = "Email address for the Quality Assurance AWS account"
  type        = string
}

# Email for the Sandbox account
variable "sandbox_email" {
  description = "Email address for the Sandbox AWS account"
  type        = string
}

# Email for the Logging account
variable "logging_email" {
  description = "Email address for the Logging AWS account"
  type        = string
}

# Email for the SecOps account
variable "secops_email" {
  description = "Email address for the SecOps AWS account"
  type        = string
}
