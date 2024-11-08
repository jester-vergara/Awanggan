output "s3_bucket_id" {
  description = "The ID of the S3 bucket for Terraform state storage"
  value       = module.s3.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket for Terraform state storage"
  value       = module.s3.s3_bucket_arn
}
