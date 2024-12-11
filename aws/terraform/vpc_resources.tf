# VPC Module for Shared Workspace
module "vpc_shared" {
  source = "./modules/vpc"

  for_each = terraform.workspace == "shared" ? {
    for vpc in var.vpc_to_create :
    join("-", vpc) => {
      name      = "VPC-${vpc[0]}-${vpc[1]}-${vpc[2]}"
      cidr_block = var.vpc_cidr[vpc[0]][vpc[1]][vpc[2]]
      account    = vpc[0]
      region     = vpc[1]
      label      = vpc[2]
      tags       = {
        Project     = "Awanggan"
        Environment = terraform.workspace
      }
    }
  } : {}

  name       = each.value.name
  cidr_block = each.value.cidr_block
  tags       = each.value.tags
}

# Subnet Module for Shared Workspace
module "subnet_shared" {
  source = "./modules/subnet"

  for_each = terraform.workspace == "shared" ? {
    for vpc_key, vpc in module.vpc_shared : vpc_key => vpc
  } : {}

  vpc_id   = each.value.vpc_id
  name     = each.value.name 
  subnets  = var.subnet_cidr[each.value.account][each.value.region][each.value.label]
  tags     = each.value.tags
}
