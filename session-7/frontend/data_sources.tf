data "terraform_remote_state" "db" {
  backend = "s3"
  config = {
    bucket = "aws-terraform-backend-lana"
    key    = "session-7/backend/terraform.tfstate"
    region = "us-east-1"
  }
}