output "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  value       = module.dynamodb.dynamodb_table_name
}

output "dynamodb_table_arn" {
  description = "The ARN of the DynamoDB table for state locking"
  value       = module.dynamodb.dynamodb_table_arn
}
