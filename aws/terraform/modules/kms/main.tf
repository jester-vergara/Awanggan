resource "aws_kms_key" "kms_key" {
  description             = var.description
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days

  tags = var.tags
}

resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.alias_name}"
  target_key_id = aws_kms_key.kms_key.id
}
