output "role_arn" {
  value       = aws_iam_role.role.arn
  description = "The ARN of the IAM role for accessing S3 and DynamoDB"
}

output "policy_arn" {
  value       = aws_iam_policy.policy.arn
  description = "The ARN of the IAM policy attached to the role"
}
