module "s3_dynamodb_iam_role" {
  source    = "../modules/iam"
  role_name = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
  policy_name        = "${var.role_name}_s3_dynamodb_policy"
  policy_description = "Policy for S3 and DynamoDB access for Terraform state management"
  policy_document = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket",
          "s3:DeleteObject",
          "s3:PutObjectAcl"
        ]
        Resource = [
          "arn:aws:s3:::${var.s3_bucket_name}",
          "arn:aws:s3:::${var.s3_bucket_name}/*"
        ]
      },
      {
        Effect = "Allow"
        Action = [
          "dynamodb:PutItem",
          "dynamodb:GetItem",
          "dynamodb:DeleteItem",
          "dynamodb:Query"
        ]
        Resource = "arn:aws:dynamodb:${var.region}:${var.account_id}:table/${var.dynamodb_table_name}"
      }
    ]
  })
  tags = var.common_tags
}
