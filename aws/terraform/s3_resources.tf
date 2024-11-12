module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = var.s3_bucket_name
  kms_key_id     = var.kms_key_id
  #iam_role_arn   = module.iam.iam_role_arn
  #depends_on     = [module.iam]
  tags           = var.common_tags
}

