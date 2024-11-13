module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = var.s3_bucket_name
  kms_key_id     = var.kms_key_id
  tags           = merge(var.common_tags, { CreationDate = "20241108" })
}
