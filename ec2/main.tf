provider "aws" {
  region = var.aws_region
}

locals {
  ingress_rules = [
    {port=443},
    {port=80},
    {port=22},
    {port=8080}
  ]
}


resource "aws_security_group" "ec2-securitygroup" {
  name        = "${var.instance_name}-sg"
  description = "Security group for EC2 instance"
  dynamic "ingress" {
    for_each = local.ingress_rules
    content{
      description= "*"
      from_port = ingress.value.port
      to_port = ingress.value.port
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
   tags = {
    Name = "${var.instance_name}-sg"
  }
}

resource "aws_instance" "my-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [
    aws_security_group.ec2-securitygroup.id
  ]

  tags = {
    Name = var.instance_name
  }
}
