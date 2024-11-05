resource "aws_organizations_organization" "org" {
  aws_service_access_principals = ["controltower.amazonaws.com"]
  feature_set                   = "ALL"
}


module "aws_organizations_account" {
  source = "../modules/account"

  for_each = zipmap(var.account_names, var.account_emails)

  account_name  = each.key
  account_email = each.value
  parent_id     = aws_organizations_organization.org.roots[0].id
}

