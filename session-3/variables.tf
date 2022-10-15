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
