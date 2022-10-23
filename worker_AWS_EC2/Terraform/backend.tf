terraform {
  backend "s3" {
    profile        = "terraform_user"
    bucket         = "backend-state-bucket-ma"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "lock_table"
  }
}