module "shared_account" {
  source         = "./modules/account"  # Adjust the path to your module
  account_name   = "Shared"
  account_email  = var.shared_email
  parent_id      = aws_organizations_organization.org.id
  role_name      = "OrganizationAccountAccessRole"
  iam_user_access_to_billing = true
  close_on_deletion = false
  tags           = { Project = "Awanggan", Environment = "Shared" }
}
