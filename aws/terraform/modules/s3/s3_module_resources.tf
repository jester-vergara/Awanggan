resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name

  # Enable versioning for the S3 bucket
  versioning {
    enabled = true
  }

  # Enable server-side encryption with the specified KMS key
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = var.kms_key_id
      }
    }
  }

  # Apply tags to the bucket
  tags = var.tags
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}
