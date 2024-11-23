module "dynamodb_github" {
  source         = "./modules/dynamodb"
  count          = terraform.workspace == "control_tower" ? 1 : 0
  table_name     = var.dynamodb_table_name
  partition_key  = var.dynamodb_partition_key
  sort_key       = var.dynamodb_sort_key
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
  tags           = var.dynamodb_tags
  kms_key_id     = module.dynamodb_kms_key[0].kms_key_arn # Reference the output
}

module "dynamodb_github_shared" {
  source         = "./modules/dynamodb"
  count          = terraform.workspace == "shared" ? 1 : 0
  table_name     = var.dynamodb_table_name
  partition_key  = var.dynamodb_partition_key
  sort_key       = var.dynamodb_sort_key
  read_capacity  = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
  tags           = var.dynamodb_tags
  kms_key_id     = module.dynamodb_kms_key_shared[0].kms_key_arn # Reference the output
}