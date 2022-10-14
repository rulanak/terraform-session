resource "aws_instance" "first_ec2" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}

// resource = block 
// aws_instance = first lable = resource type = predefined by Terraform 
// first_ec2 = second label = logical name or ID (name for resource) and it has to be unique = defined by Author
// argument = consists of key/value, name/value = configuration and components of ur resource
   // - key = predefined by Terraform
   // - value = defined by Author

// each terraform configuration file has an extention called ".tf"

// terraform has 2 types of Blocks
// 1. resource =  create and manage resources, services, infrastructures 
// 2. Data Source = 

// each block expects 2! lables, resource expects 2 lables

// terraform.tfstate (desired state of ur infrastruction)
// in Terraform, this file is called "Backend File"
// there are 2 types of Backend
// 1. Local Backend = is in within the working directory
// 2. Remote Backend = is in te remote storage such as s3 bucket, etc