resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name

  # Enable versioning to keep history of changes to state files
  versioning {
    enabled = true
  }

  # Enforce server-side encryption
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = var.kms_key_id != "" ? "aws:kms" : "AES256"
        kms_master_key_id = var.kms_key_id != "" ? var.kms_key_id : null
      }
    }
  }

  # Lifecycle rule to prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }

  tags = var.tags
}

resource "aws_s3_bucket_policy" "state_bucket_policy" {
  bucket = aws_s3_bucket.terraform_state.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = var.iam_role_arn # Use IAM role ARN from the IAM module
        }
        Action = "s3:*"
        Resource = [
          "${aws_s3_bucket.terraform_state.arn}",
          "${aws_s3_bucket.terraform_state.arn}/*"
        ]
      }
    ]
  })
}

