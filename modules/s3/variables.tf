variable "env" {
    type = string
    description = "Environmment variable"
    default = "dev"
}
variable "bucket_name" {
    type = string
    description = "This variable for S3 Bucket name. Bucket name has to be unique, lower case, no special charachters"
    default = "terraform-module-test-bucket-lana"
}
variable "bucket_acl" {
    type = string
    description = "Bucket level Access Control List. Private is a default"
    default = "private"
}