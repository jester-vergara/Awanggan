output "s3_kms_key_arn" {
  value       = module.s3_kms_key[0].kms_key_arn
  description = "The ARN of the KMS key for the S3 bucket"
}

output "dynamodb_kms_key_arn" {
  value       = module.dynamodb_kms_key[0].kms_key_arn
  description = "The ARN of the KMS key for the DynamoDB table"
}

output "s3_kms_key_arn" {
  value       = module.dynamodb_kms_key_shared[0].kms_key_arn
  description = "The ARN of the KMS key for the S3 bucket"
}

output "dynamodb_kms_key_arn" {
  value       = module.dynamodb_kms_key_shared[0].kms_key_arn
  description = "The ARN of the KMS key for the DynamoDB table"
}
