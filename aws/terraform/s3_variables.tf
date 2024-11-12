variable "s3_bucket_name" {
  description = "Name of the S3 bucket for Terraform state storage"
  type        = string
  default     = "awanggan-github-bootstrap-terraform-state-bucket"
}

variable "dynamodb_table_name" {
  type        = string
  description = "The name of the DynamoDB table for state locking"
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
}

variable "kms_key_id" {
  type        = string
  description = "The KMS key ID for encryption"
}