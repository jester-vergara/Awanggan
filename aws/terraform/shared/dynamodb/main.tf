module "dynamodb_gitlab" {
  source              = "../dynamodb"
  dynamodb_table_name = "terraform-state-lock"
  tags                = var.common_tags
}