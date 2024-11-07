output "role_arn" {
  description = "The ARN of the IAM role with S3 and DynamoDB access"
  value       = module.s3_dynamodb_iam_role.role_arn
}

output "policy_arn" {
  description = "The ARN of the IAM policy attached to the role"
  value       = module.s3_dynamodb_iam_role.policy_arn
}
