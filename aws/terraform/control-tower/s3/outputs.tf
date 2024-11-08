output "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state storage"
  value       = module.s3.s3_bucket_name
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket for Terraform state storage"
  value       = module.s3.s3_bucket_arn
}
