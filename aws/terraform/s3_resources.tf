module "s3_github" {
  source         = "./modules/s3"
  count          = terraform.workspace == "control_tower" ? 1 : 0
  s3_bucket_name = var.s3_bucket_name
  kms_key_id     = module.s3_kms_key[0].kms_key_arn # Reference the output
  tags           = merge(var.common_tags, { CreationDate = "20241108" })
}
