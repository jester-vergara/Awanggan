variable "vpc_to_create" {
  description = "List of VPCs to create, specified as [account, region, label]"
  type        = list(list(string))
}

variable "subnet_to_create" {
  description = "List of subnets to create, specified as [account, region, label, ecosystem]"
  type        = list(list(string))
}

variable "create_db_subnet_group" {
  description = "Flag to indicate if a DB subnet group should be created"
  type        = bool
  default     = false
}
