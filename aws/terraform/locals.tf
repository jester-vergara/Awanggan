# Define VPCs only for the "shared" workspace
locals {
  vpcs_to_create = terraform.workspace == "shared" ? {
    for key, vpc in module.vpc_shared : key => {
      vpc_id     = vpc.vpc_id
      igw_id     = vpc.igw_id
      name       = vpc.name
      cidr_block = vpc.cidr_block
      account    = vpc.account
      region     = vpc.region
      label      = vpc.label
      subnets    = var.subnet_cidr[vpc.account][vpc.region][vpc.label]
      tags       = vpc.tags
    }
  } : {}
}
