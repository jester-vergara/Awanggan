variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for state locking"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the DynamoDB table"
  type        = map(string)
  default = {
    Project     = "Awanggan"
    Environment = "Shared"
    Owner       = "Avalon"
    Purpose     = "State Locking"
  }
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use for encryption"
  type        = string
  default     = ""
}
