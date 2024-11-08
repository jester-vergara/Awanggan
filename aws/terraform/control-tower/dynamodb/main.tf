module "dynamodb" {
  source              = "./../../modules/dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
  kms_key_id          = module.kms_key.kms_key_id  # Pass the KMS key ID here
  depends_on          = [module.kms_key]
  tags                = var.common_tags
}
