module "s3" {
  source = "./modules/s3"
  s3_bucket_name = var.s3_bucket_name
  kms_key_id     = var.kms_key_id
  iam_role_arn   = "arn:aws:iam::account-id:role/role-name" # Replace with actual role ARN
  tags           = var.common_tags
}
