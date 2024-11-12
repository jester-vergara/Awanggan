output "kms_key_id" {
  description = "The ID of the KMS key"
  value       = module.kms_key.kms_key_id
}

output "kms_key_arn" {
  description = "The ARN of the KMS key"
  value       = module.kms_key.kms_key_arn
}

output "kms_alias_arn" {
  description = "The ARN of the KMS key alias"
  value       = module.kms_key.kms_alias_arn
}
