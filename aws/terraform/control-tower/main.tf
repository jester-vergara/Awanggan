provider "aws" {
  region = var.region
}

# AWS Organizations - Enable Control Tower
resource "aws_organizations_organization" "org" {
  aws_service_access_principals = ["controltower.amazonaws.com"]
  feature_set = "ALL"
}

# AWS Control Tower Accounts
resource "aws_organizations_account" "shared_account" {
  account_name           = "Shared"
  email                  = var.shared_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "log_archive_account" {
  account_name           = "LogArchive"
  email                  = var.log_archive_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "audit_account" {
  account_name           = "Audit"
  email                  = var.audit_email
  organizational_unit_id = aws_organizations_organization.org.id
}

# Additional Accounts
resource "aws_organizations_account" "prod_account" {
  account_name           = "Prod"
  email                  = var.prod_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "dev_account" {
  account_name           = "Dev"
  email                  = var.dev_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "qa_account" {
  account_name           = "QA"
  email                  = var.qa_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "sandbox_account" {
  account_name           = "Sandbox"
  email                  = var.sandbox_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "logging_account" {
  account_name           = "Logging"
  email                  = var.logging_email
  organizational_unit_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "secops_account" {
  account_name           = "SecOps"
  email                  = var.secops_email
  organizational_unit_id = aws_organizations_organization.org.id
}

