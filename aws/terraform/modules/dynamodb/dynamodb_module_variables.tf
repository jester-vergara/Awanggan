variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "partition_key" {
  description = "Partition key attribute name for the DynamoDB table"
  type        = string
}

variable "sort_key" {
  description = "Sort key attribute name for the DynamoDB table, if applicable"
  type        = string
  default     = null
}

variable "read_capacity" {
  description = "Provisioned read capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Provisioned write capacity for the DynamoDB table"
  type        = number
  default     = 5
}

variable "tags" {
  description = "Tags to apply to the DynamoDB table"
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "KMS Key ID for server-side encryption"
  type        = string
  default     = null
}
