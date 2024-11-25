resource "aws_dynamodb_table" "this" {
  name           = var.table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.partition_key

  # Define the partition key explicitly
  attribute {
    name = var.partition_key
    type = "S" # Adjust the type if needed (S for String, N for Number, B for Binary)
  }

  # Define the sort key conditionally if provided
  dynamic "attribute" {
    for_each = var.sort_key != null ? [var.sort_key] : []
    content {
      name = var.sort_key
      type = "S"
    }
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = var.kms_key_id
  }

  tags = var.tags
}

resource "aws_dynamodb_table_policy" "this" {
  table_name = aws_dynamodb_table.this.name
  policy     = var.dynamodb_policy
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "dynamodb_policy" {
  statement {
    sid       = "AllowAccess"
    effect    = "Allow"
    principals {
      type        = "AWS"
      identifiers = var.access_roles
    }
    actions = [
      "dynamodb:GetItem",
      "dynamodb:PutItem",
      "dynamodb:DeleteItem",
      "dynamodb:UpdateItem",
      "dynamodb:Scan",
      "dynamodb:Query",
      "dynamodb:BatchGetItem",
      "dynamodb:BatchWriteItem"
    ]
    resources = [
      "arn:aws:dynamodb:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:table/${var.table_name}",
      "arn:aws:dynamodb:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:table/${var.table_name}/*"
    ]
  }
}