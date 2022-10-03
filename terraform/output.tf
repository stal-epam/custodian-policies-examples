output "instance_public_ips" {
  description = "Public IPs of the instances"
  value       = aws_instance.amazon-linux.*.public_ip
}