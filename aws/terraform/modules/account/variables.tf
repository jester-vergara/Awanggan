# Account name variable
variable "account_name" {
  description = "The name of the AWS account to be created."
  type        = string
}

# Account email variable
variable "account_email" {
  description = "The email address associated with the AWS account."
  type        = string
}

# Parent Organizational Unit ID
variable "parent_id" {
  description = "The parent organizational unit ID for the account (usually the root or a specific OU)."
  type        = string
}
