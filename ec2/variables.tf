variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing instance key pair"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
  default     = "my-aws-insance"
}
