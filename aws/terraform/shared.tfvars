environment = "shared"

dynamodb_table_name = "github-terraform-state-lock"
s3_bucket_name      = "awanggan-gitlab-terraform-state-bucket"

kms_key_admins = [
  "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
]

kms_key_users = [
  "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
]

dynamodb_kms_key_alias = "alias/shared/github-dynamodb-kms-key"

encrypt_state = false

account_root_arn = "arn:aws:iam::961341517694:root"

access_roles = ["arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"]
# Added CIDR allocations for shared VPCs
vpc_cidr_allocations = {
  "SHARED-VPC-US-EAST-1-ALPHA" = "11.0.0.0/15"
  "SHARED-VPC-US-EAST-1-BETA"  = "11.1.0.0/15"
  # Add more as per allocation table
}
