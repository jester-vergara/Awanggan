variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for the control tower state lock"
  type        = string
  default     = "github-terraform-state-lock"
}

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

variable "dynamodb_tags" {
  description = "Tags to apply to the DynamoDB table"
  type        = map(string)
  default     = {
    Project       = "Awanggan"
    Environment   = "Control-Tower"
    Owner         = "Avalonian"
  }
}

variable "dynamodb_kms_key_id" {
  description = "KMS Key ID for server-side encryption"
  type        = string
  default     = "arn:aws:kms:ap-southeast-1:571600861891:key/09cd2274-112b-489e-b468-7b23008ac07a"
}
