terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.45"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "malu" {
  ami           = "ami-076309742d466ad69"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
