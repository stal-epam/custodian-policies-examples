variable "aws_region" {
  description = "AWS default region - Northern Virginia"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS default profile"
  type        = string
  default     = "default"
}

variable "instance_type" {
  description = "Instance type t2"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Count of EC2 instances"
  type        = number
  default     = 3
}

variable "instance_name_tags" {
  type = list(string)
  default = ["SRV-01", "SRV-02", "SRV-03"]
}

variable "instance_AZs" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "s3_bucket_prefix" {
  description = "Prefix for S3 bucket"
  type        = string
  default     = "epam-insider-s3-bucket-"
}

variable "s3_bucket_name" {
  description = "Name for S3 bucket"
  type        = string
  default     = "EPAM-Insider-S3-Bucket"
}

variable "s3_bucket_private_acl" {
  description = "ACL for S3 bucket"
  type        = string
  default     = "private"
}