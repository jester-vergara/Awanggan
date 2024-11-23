bucket         = "awanggan-gitlab-terraform-state-bucket"
key            = "terraform/state/shared/shared.tfstate"
region         = "ap-southeast-1"
dynamodb_table = "github-terraform-state-lock"
encrypt        = true
