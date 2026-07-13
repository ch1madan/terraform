# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-north-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-068b5bc67e48209c1" # Amazon Linux in eu-north-1, update as per your region
  instance_type = "t3.micro"
  
  tags = {
    Name = "Lovely_EC2_Instance"
  }
}
