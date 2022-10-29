module "s3" {
  source      = "../../modules/s3" #where child module is
  env         = "dev"
  bucket_name = "terraform-module-test-dev"
  bucket_acl  = "private"
}
module "ec2" {
  source        = "../../modules/ec2"
  env           = "dev"
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  s3_bucket_name = module.s3.s3_bucket_name
}