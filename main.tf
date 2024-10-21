terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-02801556a781a4499"  # Ensure this AMI exists in the specified region
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-pipeline"
  }
}
