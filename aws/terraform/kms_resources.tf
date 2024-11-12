module "s3_kms_key" {
  source              = "./modules/kms"
  kms_key_alias       = var.s3_kms_key_alias
  kms_key_description = var.s3_kms_key_description
  key_admins          = var.kms_key_admins
  key_users           = var.kms_key_users
  common_tags         = var.common_tags
}

module "dynamodb_kms_key" {
  source              = "./modules/kms"
  kms_key_alias       = var.dynamodb_kms_key_alias
  kms_key_description = var.dynamodb_kms_key_description
  key_admins          = var.kms_key_admins
  key_users           = var.kms_key_users
  common_tags         = var.common_tags
}
