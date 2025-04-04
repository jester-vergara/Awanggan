variable "common_tags" {
  type        = map(string)
  description = "Common tags to be applied to all resources"
  default = {
    Project        = "Awanggan"
    Environment    = "Control-Tower"
    Owner          = "Avalonian"
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
    EmailAddress   = "Avalonian.MP.ControlTower@proton.me"
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

variable "dynamodb_table_name" {
  type    = string
  default = "github-terraform-state-lock" # DynamoDB table for state locking
}

variable "s3_bucket_name" {
  type    = string
  default = "awanggan-github-bootstrap-terraform-state-bucket" # S3 bucket name for state storage
}
