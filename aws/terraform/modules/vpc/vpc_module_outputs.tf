output "vpc_id" {
  value       = aws_vpc.this.id
  description = "The ID of the VPC"
}

output "public_subnet_ids" {
  value       = aws_subnet.public[*].id
  description = "The IDs of the public subnets"
}

output "private_subnet_ids" {
  value       = aws_subnet.private[*].id
  description = "The IDs of the private subnets"
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.igw.id
  description = "The ID of the Internet Gateway"
}

output "nat_gateway_ids" {
  value       = aws_nat_gateway.nat[*].id
  description = "The IDs of the NAT Gateways, if created"
}

output "shared_vpc_ids" {
  value       = { for k, v in aws_vpc.this : k => v.id }
  description = "VPC IDs for all Shared VPCs"
}

output "shared_vpc_cidrs" {
  value       = { for k, v in aws_vpc.this : k => v.cidr_block }
  description = "CIDRs for all Shared VPCs"
}

output "shared_vpc_regions" {
  value       = { for k, v in aws_vpc.this : k => v.region }
  description = "Regions for all Shared VPCs"
}

output "vpc_id" {
  value = aws_vpc.this.id
}
