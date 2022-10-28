variable "env" {
  type        = string
  description = "This is var for Environment"
  default     = "dev"
}

variable "i_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}
variable "ingress_ports" {
  type        = list(string)
  description = "list of ports for ingress rule"
  default     = ["22", "80"]
}
variable "ingress_cidrs" {
  type        = list(string)
  description = "list of CIDRs for ingress Ports"
  default     = ["44.212.71.220/32", "0.0.0.0/0"]
}