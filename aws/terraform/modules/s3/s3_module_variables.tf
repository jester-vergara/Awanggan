variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "kms_key_id" {
  description = "KMS key ARN for server-side encryption"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "s3_bucket_policy" {
  description = "Resource-based policy for the S3 bucket"
  type        = string
  default     = ""
}
