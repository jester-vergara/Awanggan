variable "s3_bucket_name" {
  description = "Name of the S3 bucket to store Terraform state"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key ID for encrypting objects in the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the S3 bucket"
  type        = map(string)
  default     = {}
}
