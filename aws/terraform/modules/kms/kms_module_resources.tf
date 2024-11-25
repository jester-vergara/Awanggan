resource "aws_kms_key" "kms_key" {
  description             = var.kms_key_description
  deletion_window_in_days = var.kms_deletion_window_in_days
  policy                  = data.aws_iam_policy_document.kms_policy.json

  tags = var.common_tags
}

data "aws_iam_policy_document" "kms_policy" {
  statement {
    sid       = "Enable IAM User Permissions"
    effect    = "Allow"
    principals {
      type        = "AWS"
      identifiers = [var.account_root_arn]
    }
    actions   = ["kms:*"]
    resources = ["*"]
  }

  statement {
    sid       = "Allow Key Administrators"
    effect    = "Allow"
    principals {
      type        = "AWS"
      identifiers = var.key_admins
    }
    actions   = [
      "kms:Create*", "kms:Describe*", "kms:Enable*", "kms:List*",
      "kms:Put*", "kms:Update*", "kms:Revoke*", "kms:Disable*",
      "kms:Get*", "kms:Delete*", "kms:ScheduleKeyDeletion", "kms:CancelKeyDeletion"
    ]
    resources = ["*"]
  }

  statement {
    sid       = "Allow Key Usage"
    effect    = "Allow"
    principals {
      type        = "AWS"
      identifiers = var.key_users
    }
    actions   = [
      "kms:Encrypt", "kms:Decrypt", "kms:ReEncrypt*", "kms:GenerateDataKey*", "kms:DescribeKey"
    ]
    resources = ["*"]
  }
}

resource "aws_kms_alias" "kms_alias" {
  name          = "${var.kms_key_alias}/awanggan-kms-key"
  target_key_id = aws_kms_key.kms_key.key_id
}