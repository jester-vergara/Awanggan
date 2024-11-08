variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for Terraform state locking"
  type        = string
  default     = "terraform-state-lock"
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

variable "account_emails" {
  type        = list(string)
  description = "List of account email addresses"
}

variable "account_names" {
  type        = list(string)
  description = "List of account names"
}
