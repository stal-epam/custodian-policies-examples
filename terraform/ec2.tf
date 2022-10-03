resource "aws_instance" "amazon-linux" {
  ami           = data.aws_ami.amazon-linux.id
  instance_type = var.instance_type
  count = var.instance_count
  availability_zone = element(var.instance_AZs, count.index)
  disable_api_termination = true

  tags = {
    Name = element(var.instance_name_tags, count.index)
  }
}