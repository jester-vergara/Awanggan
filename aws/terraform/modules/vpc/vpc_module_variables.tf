variable "name" {
  description = "The name of the VPC to be created"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "create_nat_gateways" {
  description = "Whether to create NAT Gateways for private subnet internet access"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to assign to all created resources"
  type        = map(string)
  default     = {}
}

variable "create_db_subnet_group" {
  description = "Whether to create a DB Subnet Group for RDS"
  type        = bool
  default     = false
}
