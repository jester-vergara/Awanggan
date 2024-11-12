variable "s3_bucket_name" {
  description = "Name of the S3 bucket for Terraform state storage"
  type        = string
  default     = "awanggan-github-bootstrap-terraform-state-bucket"
}

variable "account_id" {
  type        = string
  description = "The AWS account ID"
  default     = ""
}

