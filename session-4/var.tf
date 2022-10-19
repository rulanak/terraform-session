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
