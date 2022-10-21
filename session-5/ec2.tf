resource "aws_instance" "main" {
  count         = 2 #Meta argument
  ami           = var.ami_id
  instance_type = var.i_type
  // security_groups = "" only for default vpc, not custom
  vpc_security_group_ids = [aws_security_group.main.id] //reference dynamic
  tags = {
    Name = "${var.env}-${count.index}"
  }
}
