resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.i_type
  // security_groups = "" only for default vpc, not custom
  vpc_security_group_ids = [aws_security_group.web.id] //reference dynamic
  tags = {
    Name = var.env
  }
}
