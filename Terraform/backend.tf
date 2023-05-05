
terraform {
  backend "s3" {
    bucket         = "eks-remote-state-buket"
    key            = "terraform.tfstate"
    dynamodb_table = "state_lock"
  }

}