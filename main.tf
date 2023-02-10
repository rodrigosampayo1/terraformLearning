terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}


#resource resource-type resource-name
resource "aws_instance" "app_server" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f05a5e1af82d6c59"]
  subnet_id = "subnet-0ec8a1c3b00f8bfd4"

  tags = {
    Name = var.nombreDeEC2
  }
}

resource "aws_vpc" "vpc_master" {
  cidr_block           = "20.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { 
    Name = "master-vpc-jenkins"
  }
}

