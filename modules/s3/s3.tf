resource "aws_s3_bucket" "b" {
  bucket = "${var.env}-${var.bucket_name}"
  acl = var.bucket_acl
}
