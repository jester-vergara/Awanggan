bucket         = "awanggan-gitlab-terraform-state-bucket"
key            = "terraform/state/control_tower/control_tower.tfstate"
region         = "ap-southeast-1"
dynamodb_table = "github-terraform-state-lock"
encrypt        = true