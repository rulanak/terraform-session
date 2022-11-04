terraform {
  backend "s3" {
    bucket         = "aws-terraform-backend-lana"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table-lana"
    workspace_key_prefix = "session-11"
  }
}
