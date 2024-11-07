module "dynamodb" {
  source              = "../../modules/dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
  tags                = var.common_tags
}
