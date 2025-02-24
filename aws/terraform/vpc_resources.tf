# # VPC Module for Shared Workspace
# module "vpc_shared" {
#   source = "./modules/vpc"

#   for_each = terraform.workspace == "shared" ? {
#     for vpc in var.vpc_to_create :
#     join("-", vpc) => {
#       name       = "VPC-${vpc[0]}-${vpc[1]}-${vpc[2]}"
#       cidr_block = var.vpc_cidr[vpc[0]][vpc[1]][vpc[2]]
#       account    = vpc[0]
#       region     = vpc[1]
#       label      = vpc[2]
#       tags = {
#         Project     = "Awanggan"
#         Environment = terraform.workspace
#       }
#     }
#   } : {}

#   name       = each.value.name
#   cidr_block = each.value.cidr_block
#   tags       = each.value.tags
# }

# VPC Module for Shared Workspace
module "vpc_shared" {
  source = "./modules/vpc"

  for_each = terraform.workspace == "shared" ? {
    for vpc in var.vpc_to_create :
    join("-", vpc) => {
      name       = "VPC-${vpc[0]}-${vpc[1]}-${vpc[2]}"
      cidr_block = var.vpc_cidr[vpc[0]][vpc[1]][vpc[2]]
      account    = vpc[0]
      region     = vpc[1]
      label      = vpc[2]
      tags = {
        Project     = "Awanggan"
        Environment = terraform.workspace
      }
    }
  } : {}

  name       = each.value.name
  cidr_block = each.value.cidr_block
  tags       = each.value.tags
}
