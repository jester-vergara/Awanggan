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

resource "aws_dynamodb_resource_policy" "this" {
  resource_arn = aws_dynamodb_table.this.arn
  policy       = data.aws_iam_policy_document.dynamodb_policy.json
}

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
      aws_dynamodb_table.this.arn,
      "${aws_dynamodb_table.this.arn}/*"
    ]
  }
}