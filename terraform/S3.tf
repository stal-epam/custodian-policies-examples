resource "aws_s3_bucket" "s3_example_bucket" {
  bucket_prefix     = var.s3_bucket_prefix

  tags = {
    Name        = var.s3_bucket_name
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.s3_example_bucket.id
  acl    = var.s3_bucket_private_acl
}