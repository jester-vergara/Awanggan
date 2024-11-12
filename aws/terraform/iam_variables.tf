variable "role_name" {
  type        = string
  description = "Name of the IAM role for S3 and DynamoDB access"
  default     = "S3_DynamoDB_Access_Role"
}
