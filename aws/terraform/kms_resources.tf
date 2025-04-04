module "s3_kms_key" {
  source              = "./modules/kms"
  count               = terraform.workspace == "control_tower" ? 1 : 0
  kms_key_alias       = var.s3_kms_key_alias
  kms_key_description = var.s3_kms_key_description
  key_admins          = var.kms_key_admins
  key_users           = var.kms_key_users
  account_root_arn    = var.account_root_arn
  common_tags         = var.common_tags
}

module "dynamodb_kms_key" {
  source              = "./modules/kms"
  count               = terraform.workspace == "control_tower" ? 1 : 0
  kms_key_alias       = var.dynamodb_kms_key_alias
  kms_key_description = var.dynamodb_kms_key_description
  key_admins          = var.kms_key_admins
  key_users           = var.kms_key_users
  account_root_arn    = var.account_root_arn
  common_tags         = var.common_tags
}

module "dynamodb_kms_key_shared" {
  source              = "./modules/kms"
  count               = terraform.workspace == "shared" ? 1 : 0
  kms_key_alias       = var.dynamodb_kms_key_alias
  kms_key_description = var.dynamodb_kms_key_description
  key_admins          = var.kms_key_admins
  key_users           = var.kms_key_users
  account_root_arn    = var.account_root_arn
  common_tags         = merge(var.common_tags, { CreationDate = "20241125" })
}