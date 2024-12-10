locals {
  vpc_ids = {
    for key, value in module.vpc_shared :
    key => value.vpc_id
  }
}
