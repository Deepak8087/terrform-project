provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "example" {
  ami           = "ami-0f71013b2c8bd2c29"
  instance_type = "t2.micro"
  tags = {
    Name = "jenkins-pipeline"
  }
}
