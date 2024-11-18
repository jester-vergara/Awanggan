output "s3_bucket_arn" {
  description = "ARN of the S3 bucket used for Terraform state"
  value       = module.s3_github.s3_bucket_arn
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket used for Terraform state"
  value       = module.s3_github.s3_bucket_name
}
