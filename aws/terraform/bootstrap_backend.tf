terraform {
  backend "s3" {
    bucket         = "<your-bootstrap-s3-bucket-name>"
    key            = "bootstrap/terraform.tfstate"
    region         = "<bucket-region>"
    dynamodb_table = "<your-bootstrap-dynamodb-table-name>"
    encrypt        = true
  }
}
