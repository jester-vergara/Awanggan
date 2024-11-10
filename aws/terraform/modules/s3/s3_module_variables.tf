variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state storage"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key ID for encryption (optional)"
  type        = string
  default     = ""
}

variable "iam_role_arn" {
  description = "IAM Role ARN for access control (optional)"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default = {
    Project     = "Awanggan"
    Environment = "Shared"
    Owner       = "Avalon"
    Purpose     = "State Management"
  }
}

