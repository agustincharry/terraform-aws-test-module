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



resource "aws_iam_policy" "this" {
  name        = "MyPolicy"
  path        = "/"
  description = "Example policy."
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect" : "Allow",
        "Resource" : "*",
        "Action" : [
          "ecr:*",
          "sqs:*",
          "kms:*",
          "secretsmanager:*",
        ]
      }
    ]
  })
}


resource "aws_iam_policy" "this" {
  name        = "MyPolicy"
  path        = "/"
  description = "Example policy."
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect" : "Allow",
        "Resource" : "*",
        "Action" : [
          "ecr:*",
          "sqs:*",
          "kms:*",
          "secretsmanager:*",
        ]
      }
    ]
  })
}