variable "instance_type" {
  type        = string
  description = "EC2 Instance type"
}

variable "instance_name" {
  type        = string
  description = "EC2 Instance name"
}

variable "ami" {
  type        = string
  description = "EC2 AMI"
  validation {
    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "The ami value must be a valid AMI id, starting with \"ami-\"."
  }
}
