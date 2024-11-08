module "kms_key" {
  source                  = "./../../modules/kms"
  description             = "KMS key for encryption of S3 bucket and DynamoDB table for Project Awanggan"
  alias_name              = var.alias_name
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
  tags                    = var.common_tags
}
