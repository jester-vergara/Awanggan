resource "aws_organizations_account" "this" {
  name     = var.account_name
  email    = var.account_email
  parent_id = var.parent_id
}
