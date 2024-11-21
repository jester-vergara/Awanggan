output "dynamodb_table_name" {
  description = "The name of the DynamoDB table"
  value       = module.dynamodb_github[0].table_name
}

output "dynamodb_table_arn" {
  description = "The ARN of the DynamoDB table"
  value       = module.dynamodb_github[0].table_arn
}
