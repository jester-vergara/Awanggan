#
module "vpc_shared" {
  source = "./modules/vpc"
  for_each = {
    for vpc in var.vpc_to_create : join("-", vpc) => {
      name       = "VPC-${vpc[0]}-${vpc[1]}-${vpc[2]}"
      cidr_block = var.vpc_cidr[vpc[0]][vpc[1]][vpc[2]]
    }
  }

  name                 = each.value.name
  cidr_block           = each.value.cidr_block
  public_subnet_cidrs  = []
  private_subnet_cidrs = []
  availability_zones   = []
  tags                 = { Name = each.value.name }
  create_nat_gateways  = false
}

output "debug_vpc_ids" {
  value = { for k, v in module.vpc_shared : k => v.vpc_id }
}

#
module "subnet_shared" {
  source = "./modules/vpc"
  for_each = {
    for subnet in var.subnet_to_create : join("-", subnet) => {
      vpc_key = join("-", [subnet[0], subnet[1], subnet[2]])
      subnets = var.subnet_cidr[subnet[0]][subnet[1]][subnet[2]][subnet[3]]
    }
  }

  vpc_id               = module.vpc_shared[each.value.vpc_key].vpc_id
  name                 = each.key
  cidr_block           = ""
  public_subnet_cidrs  = [for s in each.value.subnets : s.cidr_block if can(regex("PUBLIC", s.name))]
  private_subnet_cidrs = [for s in each.value.subnets : s.cidr_block if can(regex("PUBLIC", s.name))]
  availability_zones   = [for s in each.value.subnets : s.az]
  tags                 = { Name = each.key }
  create_nat_gateways  = true
}

