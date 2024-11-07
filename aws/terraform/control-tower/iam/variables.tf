variable "role_name" {
  type        = string
  description = "Name of the IAM role for S3 and DynamoDB access"
  default     = "S3_DynamoDB_Access_Role"
}

variable "s3_bucket_name" {
  description = "The S3 bucket name for Terraform state storage"
  type        = string
}

variable "dynamodb_table_name" {
  description = "The DynamoDB table name for state locking"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "account_id" {
  description = "AWS account ID where DynamoDB table is created"
  type        = string
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
