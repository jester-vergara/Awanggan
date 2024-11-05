# Account name
variable "account_name" {
  description = "The name of the AWS account to be created."
  type        = string
}

# Account email
variable "account_email" {
  description = "The email address associated with the AWS account."
  type        = string
}

# Parent Organizational Unit ID
variable "parent_id" {
  description = "The parent organizational unit ID for the account (usually the root or a specific OU)."
  type        = string
}

# IAM Role name to allow access to the account
variable "role_name" {
  description = "The name of the IAM Role to allow access to the account."
  type        = string
  default     = null
}

# IAM user access to billing
variable "iam_user_access_to_billing" {
  description = "Specifies if IAM users are allowed access to the AWS Billing and Cost Management console."
  type        = string
  default     = "DENY"
}

# Option to close the account on deletion
variable "close_on_deletion" {
  description = "Whether to close the account when the resource is destroyed."
  type        = bool
  default     = false
}

# Tags for the account
variable "tags" {
  description = "Tags to apply to the AWS account."
  type        = map(string)
  default     = {}
}
