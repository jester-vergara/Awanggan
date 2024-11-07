# IAM Module - Creates the IAM role to control S3 access
module "iam_role" {
  source = "./modules/iam" # Path to your IAM module
  # Other IAM configuration as needed
}

# KMS Module - Creates the KMS key for encrypting S3 bucket objects
module "kms_key" {
  source = "./modules/kms" # Path to your KMS module
  # Other KMS configurations
}

# S3 Module - Creates the S3 bucket with KMS encryption and restricted IAM access
module "s3_bucket" {
  source         = "./modules/s3" # Path to your S3 module
  s3_bucket_name = "gitlab-terraform-state-bucket"

  # Pass KMS key ID and IAM role ARN to the S3 module
  kms_key_id   = module.kms_key.kms_key_id
  iam_role_arn = module.iam_role.role_arn

  # Define tags or use shared tags as needed
  tags = var.common_tags
}
