output "main_instance_public_ip" {
  value       = aws_instance.main.public_ip
  description = "The public IP address of the main server instance."
}
output "main_instance_private_ip" {
  value       = aws_instance.main.private_ip
  description = "The private IP address of the main server instance."
}
output "main_instance_state" {
  value       = aws_instance.main.instance_state
  description = "Instance state."
}
