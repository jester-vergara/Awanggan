environment = "shared"

dynamodb_table_name = "gitlab-terraform-state-lock"
s3_bucket_name      = "awanggan-gitlab-terraform-state-bucket"

kms_key_admins = [
  "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
]

kms_key_users = [
  "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
]
