variable "s3_kms_key_alias" {
  description = "Alias for the S3 KMS key"
  type        = string
  default     = "alias/project-awanggan/github-s3-kms-key"
}

variable "dynamodb_kms_key_alias" {
  description = "Alias for the DynamoDB KMS key"
  type        = string
  default     = "alias/project-awanggan/github-dynamodb-kms-key"
}

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
  default = [
    "arn:aws:iam::571600861891:user/awanggan-admin-00",
    "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan",
    "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
  ]
}

variable "kms_key_users" {
  description = "List of IAM users or roles that can use the KMS key"
  type        = list(string)
  default = [
    "arn:aws:iam::571600861891:user/awanggan-admin-00",
    "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan",
    "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
  ]
}
