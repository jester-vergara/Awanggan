# Define VPCs only for the "shared" workspace
locals {
  vpcs_to_create = terraform.workspace == "shared" ? {
    for vpc in var.vpc_to_create :
    join("-", vpc) => {
      name       = "VPC-${vpc[0]}-${vpc[1]}-${vpc[2]}"
      cidr_block = lookup(lookup(lookup(var.vpc_cidr, vpc[0], {}), vpc[1], {}), vpc[2], null)
      account    = vpc[0]
      region     = vpc[1]
      label      = vpc[2]
      tags = {
        Project     = "Awanggan"
        Environment = terraform.workspace
      }
    } if lookup(lookup(lookup(var.vpc_cidr, vpc[0], {}), vpc[1], {}), vpc[2], null) != null
  } : {}
}