terraform {
  backend "s3" {
    bucket = "aws-terraform-backend-lana"
    key    = "session-5/terraform.tfstate"
    region = "us-east-1"
    // Terraform will lock your state for all operations that could write state
    # This prevents others from acquiring the lock and potentially corrupting your state. 
    # State locking happens automatically on all operations that could write state.
    # so if first destroys, another has to wait to run the same command, they won't run at the same time the same command
    dynamodb_table = "terraform-state-lock-table-lana" // state locking can be done by DynamoDB table on AWS
  }
}
