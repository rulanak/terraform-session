resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.i_type
  vpc_security_group_ids = [aws_security_group.web.id]
  user_data              = data.template_file.user_data.rendered
  tags = {
    Name  = "${var.env}-instance"
    Name2 = format("%s-intance", var.env) //same result as before
  }
}
resource "aws_instance" "frontend" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.i_type
  vpc_security_group_ids = [aws_security_group.web.id]
  user_data              = data.template_file.user_data.rendered
  tags = {
    Name = "${var.env}-frontend-instance"
  }
}
resource "aws_instance" "backend" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.i_type
  vpc_security_group_ids = [aws_security_group.web.id]
  user_data              = data.template_file.user_data.rendered
  tags = {
    Name = "${var.env}-backend-instance"
  }
}
resource "aws_instance" "db" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.i_type
  vpc_security_group_ids = [aws_security_group.web.id]
  user_data              = data.template_file.user_data.rendered
  tags = {
    Name = "${var.env}-db-instance"
  }
}
// ${file("file_path")} - before 0.12
# file("user_data.sh") - 1 of reference to bash script
# one version but hardcording:
# // user_data = <<EOF
# #!/bin/bash
# sudo yum install httpd -y
# sudo systemctl start httpd
# sudo echo 'Hello from ... Instance' >> /var/www/html/index.html
# EOF
