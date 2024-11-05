resource "aws_organizations_account" "this" {
  name                      = var.account_name
  email                     = var.account_email
  parent_id                 = var.parent_id
  role_name                 = var.role_name
  iam_user_access_to_billing = var.iam_user_access_to_billing
  close_on_deletion         = var.close_on_deletion
  tags                      = var.tags
}

module "aws_organizations_account" {
  source = "../modules/account"

  for_each = zipmap(var.account_names, var.account_emails)

  account_name  = each.key
  account_email = each.value
  parent_id     = aws_organizations_organization.org.roots[0].id
}

