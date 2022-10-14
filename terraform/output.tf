output "instance_public_ips" {
  description = "Public IPs of the instances"
  value       = aws_instance.amazon-linux.*.public_ip
}

output "s3_bucket" {
  description = "S3 bucket for cloud custodian test"
  value = aws_s3_bucket.s3_example_bucket.bucket_domain_name
}