output "s3_kms_key_arn" {
  value       = length(module.s3_kms_key) > 0 ? module.s3_kms_key[0].kms_key_arn : null
  description = "The ARN of the KMS key for the S3 bucket"
}

output "dynamodb_kms_key_arn" {
  value       = length(module.dynamodb_kms_key) > 0 ? module.dynamodb_kms_key[0].kms_key_arn : null
  description = "The ARN of the KMS key for the DynamoDB table"
}

output "dynamodb_kms_key_arn_shared" {
  value       = length(module.dynamodb_kms_key_shared) > 0 ? module.dynamodb_kms_key_shared[0].kms_key_arn : null
  description = "The ARN of the KMS key for the DynamoDB table"
}
