resource "aws_organizations_organization" "org" {
  aws_service_access_principals = [
    "controltower.amazonaws.com",
    "account.amazonaws.com",
    "cost-optimization-hub.bcm.amazonaws.com",
    "sso.amazonaws.com"
  ]
  feature_set = "ALL"
}



module "aws_organizations_account" {
  source = "./"

  for_each = zipmap(var.account_names, var.account_emails)

  account_name  = each.key
  account_email = each.value
  parent_id     = aws_organizations_organization.org.roots[0].id

  # Additional parameters
  iam_user_access_to_billing = var.iam_user_access_to_billing
  close_on_deletion          = var.close_on_deletion

  # Tags following tagging standards
  tags = {
    Project        = "Awanggan"       # Set the specific project name
    Environment    = each.key         # Or use an appropriate value
    Owner          = "Avalon"         # Set the specific owner as needed
    CostUnit       = "Alpha"          # Customize as per project requirements
    Purpose        = "Infrastructure" # Specify purpose
    Compliance     = "NA"             # Adjust if any compliance is needed
    Automation     = "Terraform"      # Specify the provisioning tool
    Retention      = "long-term"      # Set appropriate retention policy
    LifeCycle      = "Active"         # Set lifecycle stage
    Application    = "Bootstrap"      # Customize application name if relevant
    CreationDate   = "20241106"       # Automatically captures the creation date
    Schedule       = "AlwaysOn"       # Adjust based on operational needs
    CustomSchedule = "NA"             # Specify custom schedule if applicable
    EmailAddress   = each.value       # Using the email associated with the account
    ContactPerson  = "Jester"         # Set to Jester as the point of contact
  }
}
