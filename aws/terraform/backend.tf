terraform {
  backend "s3" {
    bucket               = var.s3_bucket
    key                  = "terraform/state/${var.environment}/${var.environment}.tfstate"
    region               = var.aws_region
    dynamodb_table       = var.dynamodb_table
    encrypt              = var.encrypt_state
  }
}
