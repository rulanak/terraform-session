terraform {
  backend "s3" {
    bucket         = "aws-terraform-backend-lana"
    key            = "session-6/dev/terraform.tfstate" // u need to change s3 bucket every other wd
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-table-lana" //u dont need to change it
  }
}
