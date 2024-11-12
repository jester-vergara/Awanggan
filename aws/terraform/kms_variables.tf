variable "s3_kms_key_description" {
  description = "Description for the S3 KMS key"
  type        = string
  default     = "KMS key for encryption of the S3 bucket for Project Awanggan"
}

variable "dynamodb_kms_key_description" {
  description = "Description for the DynamoDB KMS key"
  type        = string
  default     = "KMS key for encryption of the DynamoDB table for Project Awanggan"
}

variable "kms_key_admins" {
  description = "List of IAM users or roles to be KMS key administrators"
  type        = list(string)
  default     = ["awanggan-admin-00", "GitHubAssumeRoleAwanggan"]
}

variable "kms_key_users" {
  description = "List of IAM users or roles that can use the KMS key"
  type        = list(string)
  default     = ["awanggan-admin-00", "GitHubAssumeRoleAwanggan"]
}
