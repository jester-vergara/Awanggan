output "kms_key_id" {
  description = "The KMS Key ID"
  value       = aws_kms_key.kms_key.id
}

output "kms_key_arn" {
  description = "The ARN of the KMS key"
  value       = aws_kms_key.kms_key.arn
}

output "kms_alias_arn" {
  description = "The ARN of the KMS alias"
  value       = aws_kms_alias.kms_alias.arn
}
