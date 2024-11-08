variable "s3_bucket_name" {
  description = "Name of the S3 bucket for Terraform state storage"
  type        = string
  default     = "awanggan-github-bootstrap-terraform-state-bucket"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Project        = "Awanggan"
    Environment    = "Shared"
    Owner          = "Avalon"
    CostUnit       = "Alpha"
    Purpose        = "Infrastructure"
    Compliance     = "NA"
    Automation     = "Terraform"
    Retention      = "long-term"
    LifeCycle      = "Active"
    Application    = "Bootstrap"
    CreationDate   = "20241106"
    Schedule       = "AlwaysOn"
    CustomSchedule = "NA"
    ContactPerson  = "Jester"
    EmailAddress   = "contact@example.com"
  }
}

variable "dynamodb_table_name" {
  type        = string
  description = "The name of the DynamoDB table for state locking"
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
}

variable "kms_key_id" {
  type        = string
  description = "The KMS key ID for encryption"
}

variable "account_emails" {
  type        = list(string)
  description = "List of account email addresses"
}

variable "account_names" {
  type        = list(string)
  description = "List of account names"
}
