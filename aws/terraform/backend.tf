# terraform {
#   backend "s3" {
#     bucket         = var.s3_bucket_name
#     key            = "terraform/state/${var.environment}/${var.environment}.tfstate"
#     region         = var.aws_region
#     dynamodb_table = var.dynamodb_table_name
#     encrypt        = var.encrypt_state
#   }
# }
# terraform {
#   backend "local" {
#     path = "./terraform.tfstate"
#   }
# }