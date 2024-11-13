variable "s3_bucket_name" {
  description = "Name of the S3 bucket to be created or used for Terraform state"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key ARN to be used for S3 bucket encryption"
  type        = string
}

variable "iam_role_arn" {
  description = "IAM Role ARN for GitHub integration"
  type        = string
}
