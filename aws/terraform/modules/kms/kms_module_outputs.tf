output "kms_key_arn" {
  value       = aws_kms_key.kms_key.arn
  description = "The ARN of the KMS key for encryption of S3 bucket and DynamoDB table"
}

output "kms_key_alias" {
  value       = aws_kms_alias.kms_alias.name
  description = "The alias of the KMS key"
}
