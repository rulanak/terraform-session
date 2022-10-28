data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
// amzn2-ami-kernel-5.10-hvm-2.0.20220912.1-x86_64-gp2 means it was patched 09/12/2022 but we need currently patched ami, so we give * instead of everything else

