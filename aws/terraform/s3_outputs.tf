output "s3_bucket_arn" {
  description = "ARN of the S3 bucket used for Terraform state"
  value       = length(module.s3_github) > 0 ? module.s3_github[0].s3_bucket_arn : null
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket used for Terraform state"
  value       = length(module.s3_github) > 0 ? module.s3_github[0].s3_bucket_name : null
}
