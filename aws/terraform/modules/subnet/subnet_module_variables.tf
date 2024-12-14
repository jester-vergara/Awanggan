variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = []
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = []
}

variable "rds_subnet_cidrs" {
  description = "List of CIDR blocks for RDS subnets"
  type        = list(string)
  default     = []
}

variable "eks_private_cidrs" {
  description = "List of CIDR blocks for EKS private subnets"
  type        = list(string)
  default     = []
}

variable "eks_public_cidrs" {
  description = "List of CIDR blocks for EKS public subnets"
  type        = list(string)
  default     = []
}

variable "availability_zones" {
  description = "List of availability zones for subnets"
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "List of subnet definitions including CIDR blocks, AZs, and names"
  type = map(object({
    cidr_block = string
    az         = string
    name       = string
    tags       = map(string)
  }))
}

variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created"
  type        = string
}

variable "create_db_subnet_group" {
  description = "Flag to determine if the DB subnet group should be created"
  type        = bool
  default     = false
}

variable "name" {
  description = "The name prefix to use for resources"
  type        = string
}

variable "tags" {
  description = "Tags to assign to all created resources"
  type        = map(string)
  default     = {}
}
