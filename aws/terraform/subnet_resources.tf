# Subnet Module for Shared Workspace
module "subnet_shared" {
  source = "./modules/subnet"

  for_each = module.vpc_shared

  vpc_id  = module.vpc_shared[each.key].vpc_id
  name    = module.vpc_shared[each.key].name 
  subnets = var.subnet_cidr[each.value.account][each.value.region][each.value.label]
  tags    = module.vpc_shared[each.key].tags
}
