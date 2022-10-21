variable "env" {
  type        = string
  description = "This is var for Environment"
  default     = "dev"
}

variable "ami_id" {
  type    = string
  default = "ami-026b57f3c383c2eec"
}

variable "i_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}
variable "ingress_ports" {
  type        = list(string)
  description = "list of ports for ingress rule"
  default     = ["22", "80", "3306", "443", "53"]
}
variable "ingress_cidrs" {
  type        = list(string)
  description = "list of CIDRs for ingress Ports"
  default     = ["3.86.246.132/32", "0.0.0.0/0", "3.86.246.132/32", "0.0.0.0/0", "0.0.0.0/0"] // we attach every cidr block for each port, but we need to make a correct count
}
