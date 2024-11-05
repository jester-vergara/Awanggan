# Output for the Account ID
output "account_id" {
  description = "The AWS account ID of the newly created account."
  value       = aws_organizations_account.this.id
}

# Output for the Account ARN
output "account_arn" {
  description = "The ARN of the AWS account."
  value       = aws_organizations_account.this.arn
}

# Output for the Account Name
output "account_name" {
  description = "The name of the AWS account."
  value       = aws_organizations_account.this.name
}

# Output for the Account Email
output "account_email" {
  description = "The email associated with the AWS account."
  value       = aws_organizations_account.this.email
}
