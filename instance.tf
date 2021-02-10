terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.22.0"
      }
    }
  }

  provider "aws" {
    profile = "default"
    region  = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }

  owners = ["099720109477"]
}

