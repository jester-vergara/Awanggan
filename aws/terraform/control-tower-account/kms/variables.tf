variable "alias_name" {
  description = "Alias name for the KMS key"
  type        = string
  default     = "awanggan-dynamodb-kms-key"
}

variable "enable_key_rotation" {
  description = "Enable automatic key rotation for the KMS key"
  type        = bool
  default     = true
}

variable "deletion_window_in_days" {
  description = "Number of days before deletion after scheduled deletion of KMS key"
  type        = number
  default     = 30
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
