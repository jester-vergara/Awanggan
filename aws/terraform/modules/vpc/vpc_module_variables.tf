variable "name" {
  type        = string
  description = "Name of the VPC"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to use for the subnets"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to VPC and its resources"
  default     = {}
}

variable "create_nat_gateways" {
  type        = bool
  description = "Whether to create NAT Gateways for private subnet internet access"
  default     = false
}
