module "subnet_shared" {
  source  = "./modules/subnet"
  for_each = local.vpcs_to_create

  vpc_id  = each.value.vpc_id
  igw_id  = each.value.igw_id
  name    = each.value.name
  subnets = each.value.subnets
  tags    = each.value.tags
}