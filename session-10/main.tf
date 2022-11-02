module "ec2" {
  source        = "github.com/rulanak/terraform-session//modules/ec2"
  env           = "dev"
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
}