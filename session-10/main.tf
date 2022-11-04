module "ec2" {
  source        = "github.com/rulanak/terraform-session//modules/ec2?ref=v.1.0.0"  //use to roll back to another version. it always latest version by default
  env           = "dev"
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
}
module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.18.1"
}