# Outputs
output "organization_id" {
  value = aws_organizations_organization.org.id
}

output "shared_account_id" {
  value = aws_organizations_account.shared_account.id
}

output "log_archive_account_id" {
  value = aws_organizations_account.log_archive_account.id
}

output "audit_account_id" {
  value = aws_organizations_account.audit_account.id
}

output "prod_account_id" {
  value = aws_organizations_account.prod_account.id
}

output "dev_account_id" {
  value = aws_organizations_account.dev_account.id
}

output "qa_account_id" {
  value = aws_organizations_account.qa_account.id
}

output "sandbox_account_id" {
  value = aws_organizations_account.sandbox_account.id
}

output "logging_account_id" {
  value = aws_organizations_account.logging_account.id
}

output "secops_account_id" {
  value = aws_organizations_account.secops_account.id
}
