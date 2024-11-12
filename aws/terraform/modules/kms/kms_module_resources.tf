resource "aws_kms_key" "kms_key" {
  description             = var.kms_key_description
  deletion_window_in_days = 30
  enable_key_rotation     = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = var.key_admins
        }
        Action = [
          "kms:Create*", 
          "kms:Describe*", 
          "kms:Enable*", 
          "kms:List*", 
          "kms:Put*", 
          "kms:Update*", 
          "kms:Revoke*", 
          "kms:Disable*", 
          "kms:Get*", 
          "kms:Delete*", 
          "kms:TagResource", 
          "kms:UntagResource", 
          "kms:ScheduleKeyDeletion", 
          "kms:CancelKeyDeletion"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Principal = {
          AWS = var.key_users
        }
        Action = [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:DescribeKey"
        ]
        Resource = "*"
      }
    ]
  })

  tags = var.common_tags
}

resource "aws_kms_alias" "kms_alias" {
  name          = "${var.kms_key_alias}/awanggan-kms-key"
  target_key_id = aws_kms_key.kms_key.key_id
}
