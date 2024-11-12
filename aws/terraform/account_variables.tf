# Variables for AWS Region and Account Emails

# AWS Region where resources will be created
variable "region" {
  description = "AWS region for deploying resources"
  type        = string
  default     = "ap-southeast-1" # Set a default region or override in terraform.tfvars
}

variable "account_names" {
  type    = list(string)
  default = []
}

variable "account_emails" {
  type    = list(string)
  default = []
}

variable "iam_user_access_to_billing" {
  description = "Specifies if IAM users are allowed access to the AWS Billing and Cost Management console."
  type        = string
  default     = "ALLOW"
}

variable "close_on_deletion" {
  description = "Whether to close the account when the resource is destroyed."
  type        = bool
  default     = false
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
  default     = ""
}

