variable "common_tags" {
  type        = map(string)
  description = "Common tags to be applied to all resources"
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

# global_variables.tf
variable "environment" {
  type    = string
  default = "control-tower" # Or "shared" based on the target environment
}

# global_variables.tf
variable "aws_region" {
  type    = string
  default = "ap-southeast-1" # Your AWS region
}

variable "encrypt_state" {
  type    = bool
  default = true
}

variable "workspace_key_prefix" {
  type    = string
  default = "avalonian"
}

variable "aws_profile" {
  type    = string
  default = "default" # Specify profile name or use "default"
}

variable "dynamodb_table" {
  type    = string
  default = "github-terraform-state-lock" # DynamoDB table for state locking
}

variable "s3_bucket" {
  type    = string
  default = "awanggan-github-bootstrap-terraform-state-bucket" # S3 bucket name for state storage
}
