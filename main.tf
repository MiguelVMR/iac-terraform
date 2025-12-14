terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-00f46ccd1cbfb363e"
  instance_type = "t2.micro"
  key_name = "iac-terraform"

  tags = {
    Name = "Terraform Ansible Python"
  }
}