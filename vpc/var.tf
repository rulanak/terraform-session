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

variable "pubkey" {
  type        = string
  description = "for public key"
}

variable "public_ip" {
  type        = string
  description = "public ip of terraform session instance"
}
