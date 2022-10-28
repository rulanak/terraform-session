resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.i_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = aws_key_pair.terraform_server.id
  tags = {
    Name = format("%s-intance", var.env)
  }
  /////////// File Provisioner ////////////
  provisioner "file" {
    source      = "/home/ec2-user/terraform-session/session-8/index.html"
    destination = "/tmp/index.html"
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  ////////// Remote Exec Provisioner //////////
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}
resource "aws_key_pair" "terraform_server" {
  key_name   = "terraform_server"
  public_key = file("~/.ssh/id_rsa.pub")
}

///////////// Local Exec Provisioner ////////////
resource "null_resource" "local_script" {
  provisioner "local-exec" {
    command = "echo 'Hello from here' > local.txt"
  }
}
/// Null resource is not added to .tfstate file