variable "env" {
    type = string
    default = "dev"
}
variable "ami" {
    type = string
    description = "Amazon Machine Image"
    default = "ami-09d3b3274b6c5d4aa"
}
variable "instance_type" {
    type = string
    description = "size of EC2"
    default = "t2.micro"
}
variable "s3_bucket_name" {
    type = string
    description = "s3 bucket name for application to upload images"
    default = "test"
}