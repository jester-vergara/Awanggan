variable "vpc_to_create" {
  description = "List of VPCs to create, specified as [account, region, label]"
  type        = list(list(string))
}

variable "subnet_to_create" {
  description = "List of subnets to create, specified as [account, region, label, ecosystem]"
  type        = list(list(string))
}

variable "vpc_cidr" {
  description = "Mapping of VPC CIDRs for each account, region, and label"
  type        = map(map(map(string)))
}

variable "subnet_cidr" {
  description = "Mapping of Subnet CIDRs for each account, region, label, and ecosystem"
  type = map(
    map(
      map(
        map(
          list(
            object({
              cidr_block = string,
              az         = string,
              name       = string
            })
          )
        )
      )
    )
  )
}


variable "create_db_subnet_group" {
  description = "Flag to indicate if a DB subnet group should be created"
  type        = bool
  default     = false
}
