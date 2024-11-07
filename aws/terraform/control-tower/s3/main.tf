module "s3" {
  source         = "./terraform/modules/s3"
  s3_bucket_name = var.s3_bucket_name
  tags           = var.common_tags
}
