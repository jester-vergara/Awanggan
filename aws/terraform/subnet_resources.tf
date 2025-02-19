# Subnet Module for Shared Workspace
module "subnet_shared" {
  source = "./modules/subnet"

  for_each = terraform.workspace == "shared" ? {
    for vpc_key, vpc in module.vpc_shared : vpc_key => vpc
  } : {}

  vpc_id  = each.value.vpc_id
  name    = each.value.name
  subnets = var.subnet_cidr[each.value.account][each.value.region][each.value.label]
  tags    = each.value.tags
}
