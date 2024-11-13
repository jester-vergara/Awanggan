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

s3_bucket_name = "awanggan-github-bootstrap-terraform-state-bucket"

# Replace this with the actual ARN of the imported KMS key
s3_kms_key_id = "arn:aws:kms:ap-southeast-1:571600861891:key/09cd2274-112b-489e-b468-7b23008ac07a"

iam_role_arn = "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan"

dynamodb_kms_key_id = "arn:aws:kms:ap-southeast-1:571600861891:key/09cd2274-112b-489e-b468-7b23008ac07a"

