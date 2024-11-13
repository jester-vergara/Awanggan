resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
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
