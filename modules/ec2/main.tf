resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  root_block_device {
    encrypted = true
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tags = {
    Name = var.instance_name
  }
}
