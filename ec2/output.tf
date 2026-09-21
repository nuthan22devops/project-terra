output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.my-instance.id
}

output "instance_public_ip" {
  description = "Public IP address of EC2"
  value       = aws_instance.my-instance.public_ip
}

output "instance_private_ip" {
  description = "Private IP address of EC2"
  value       = aws_instance.my-instance.private_ip
}

output "instance_public_dns" {
  description = "Public DNS name of EC2"
  value       = aws_instance.my-instance.public_dns
}
