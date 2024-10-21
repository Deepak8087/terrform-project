provider "aws" {
  region = "ap-southeast-2" 
}

resource "aws_instance" "example" {
  ami           = "ami-0f71013b2c8bd2c29"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-0d2c5800c5a037018"]
  tags = {
    Name = "jenkins-pipeline"
  }
}
