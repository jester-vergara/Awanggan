output "vpc_id" {
  description = "The ID of the VPC created"
  value       = aws_vpc.this.id
}

output "name" {
  description = "The name of the VPC"
  value       = var.name
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC created"
  value       = aws_vpc.this.cidr_block
}

output "igw_id" {
  description = "The ID of the Internet Gateway created"
  value       = aws_internet_gateway.igw.id
}

output "route_table_public_id" {
  description = "The ID of the public route table created"
  value       = aws_route_table.public.id
}

output "tags" {
  description = "Tags applied to the VPC and associated resources"
  value       = var.tags
}
