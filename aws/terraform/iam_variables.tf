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
