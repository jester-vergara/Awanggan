variable "dynamodb_partition_key" {
  description = "Partition key for the DynamoDB table"
  type        = string
  default     = "LockID"
}

variable "dynamodb_sort_key" {
  description = "Sort key for the DynamoDB table, if applicable"
  type        = string
  default     = null
}

variable "dynamodb_read_capacity" {
  description = "Read capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "dynamodb_write_capacity" {
  description = "Write capacity for the DynamoDB table"
  type        = number
  default     = 5
}

# variable "dynamodb_kms_key_id" {
#   description = "KMS Key ID for server-side encryption"
#   type        = string
#   default     = ""
# }

variable "access_roles" {
  description = "List of IAM roles or users to grant access to the DynamoDB table"
  type        = list(string)
}