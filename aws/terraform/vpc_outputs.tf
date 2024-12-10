#
output "vpc_ids" {
  value = { for k, v in module.vpc_shared : k => v.vpc_id }
}