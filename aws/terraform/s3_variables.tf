variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Control Tower"
  type        = string
}

variable "kms_key_id" {
  description = "The KMS key ID for S3 bucket encryption"
  type        = string
}

