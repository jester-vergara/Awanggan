# terraform.tfvars

region = "ap-southeast-1" # Override the region if needed

account_names = ["Shared", "LogArchive", "Audit", "Prod", "Dev", "QA", "Sandbox", "Logging", "SecOps"]
account_emails = [
  "AVALONIAN.MULTIMEDIA.PRODUCTION@proton.me",
  "Avalonian.MP.LogArchive@proton.me",
  "Avalonian.MP.Audit@proton.me",
  "Avalonian.MP.Prod@proton.me",
  "Avalonian.MP.Dev@proton.me",
  "Avalonian.MP.QA@proton.me",
  "Avalonian.MP.Sandbox@proton.me",
  "Avalonian.MP.Logging@proton.me",
  "Avalonian.MP.SecOps@proton.me"
]

common_tags = {
  Project     = "Awanggan"
  Environment = "Prod"
  Owner       = "Avalon"
  # Override other fields as necessary
}

s3_bucket_name      = "awanggan-github-bootstrap-terraform-state-bucket"
dynamodb_table_name = "terraform-state-lock"
account_id          = "571600861891"
