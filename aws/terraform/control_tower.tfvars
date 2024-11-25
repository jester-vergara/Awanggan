environment = "control-tower"

account_names = [
  "Shared",
  "LogArchive",
  "Audit",
  "Prod",
  "Dev",
  "QA",
  "Sandbox",
  "Logging",
  "SecOps"
]

account_emails = [
  "AVALONIAN.MULTIMEDIA.PRODUCTION@proton.me",
  "Avalonian.LogArchive@proton.me",
  "Avalonian.Audit@proton.me",
  "jesterramon.vergara@proton.me",
  "Avalonian.Dev@proton.me",
  "Avalonian.QA@proton.me",
  "ria.orolfo@proton.me",
  "Avalonian.Logging@proton.me",
  "avalonian.consulting.services@proton.me"
]

# Replace this with the actual ARN of the imported KMS key
#s3_kms_key_id = "arn:aws:kms:ap-southeast-1:571600861891:key/951dc5bd-0a5f-425e-b91a-43d5c3c6e051"

#iam_role_arn = "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan"

#dynamodb_kms_key_id = "arn:aws:kms:ap-southeast-1:571600861891:key/8a4305c8-5a2c-4e01-bd83-d61dad076c70"

account_root_arn = "arn:aws:iam::571600861891:root"

access_roles = "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan"