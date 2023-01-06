provider "aws" {
  region = "us-east-1"
  #access_key = not defined here, defined n aws cli in system itself
  #secret_key = not defined here
}

resource "aws_instance" "intro" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "jenkins-key"
  vpc_security_group_ids = ["sg-0db946f387f1da101"]
  tags = {
    Name    = "jenkins-instance"
    Project = "jenkins-updated"
  }
}