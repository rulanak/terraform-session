resource "aws_security_group" "main" {
  name        = "web-instance-sg"
  description = "SG for my web instance"
  vpc_id      = "vpc-004e3b70d2f1935c0"
}
resource "aws_security_group_rule" "main_ingress" {
  count = length(var.ingress_ports) //can help u to count how many in list
  # count index = 0,1,2,3,4
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ingress_cidrs, count.index)]
  security_group_id = aws_security_group.main.id
}
resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1" //all protocols all ports
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}
