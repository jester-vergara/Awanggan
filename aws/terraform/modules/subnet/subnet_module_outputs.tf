output "private_subnet_ids" {
  description = "List of IDs of private subnets created"
  value       = [for subnet in aws_subnet.private : subnet.id]
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets created"
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "db_subnet_group_name" {
  description = "The name of the DB subnet group created (if any)"
  value       = aws_db_subnet_group.db[0].name
}

output "db_subnet_group_id" {
  description = "The ID of the DB subnet group created (if any)"
  value       = aws_db_subnet_group.db[0].id
}
