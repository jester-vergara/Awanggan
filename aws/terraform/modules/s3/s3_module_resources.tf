resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name

  # Apply tags directly here if your AWS provider version supports it
  tags = var.tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_id
    }
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.terraform_state.id
  policy = data.aws_iam_policy_document.s3_bucket_policy.json
}

data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    sid    = "AllowGitHubRoleAccess"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"]
    }
    actions = [
      "s3:GetObject",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:List*"
    ]
    resources = [
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket",
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket/*"
    ]
  }

  statement {
    sid    = "AllowAdminAccess"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::571600861891:user/awanggan-admin-00"]
    }
    actions = [
      "s3:GetObject",
      "s3:ListBucket"
    ]
    resources = [
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket",
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket/*"
    ]
  }

  statement {
    sid    = "AllowOrganizationAccess"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::961341517694:role/OrganizationAccountAccessRole"]
    }
    actions = [
      "s3:Get*",
      "s3:PutObject",
      "s3:DeleteObject",
      "s3:List*"
    ]
    resources = [
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket",
      "arn:aws:s3:::awanggan-github-bootstrap-terraform-state-bucket/*"
    ]
  }
}
