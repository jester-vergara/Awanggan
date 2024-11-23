output "account_ids" {
  value = {
    for account, account_data in module.aws_organizations_account : account => account_data.account_id
  }
  description = "Account IDs for the AWS Control Tower accounts."
}

output "organization_id" {
  description = "The ID of the AWS Organization."
  value       = length(aws_organizations_organization.org) > 0 ? aws_organizations_organization.org[0].id : null
}
