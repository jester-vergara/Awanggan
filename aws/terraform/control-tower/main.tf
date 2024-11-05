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
  name           = "Shared"
  email                  = var.shared_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "log_archive_account" {
  name           = "LogArchive"
  email                  = var.log_archive_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "audit_account" {
  name           = "Audit"
  email                  = var.audit_email
  parent_id = aws_organizations_organization.org.id
}

# Additional Accounts
resource "aws_organizations_account" "prod_account" {
  name           = "Prod"
  email                  = var.prod_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "dev_account" {
  name           = "Dev"
  email                  = var.dev_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "qa_account" {
  name           = "QA"
  email                  = var.qa_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "sandbox_account" {
  name           = "Sandbox"
  email                  = var.sandbox_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "logging_account" {
  name           = "Logging"
  email                  = var.logging_email
  parent_id = aws_organizations_organization.org.id
}

resource "aws_organizations_account" "secops_account" {
  name           = "SecOps"
  email                  = var.secops_email
  parent_id = aws_organizations_organization.org.id
}

