resource "aws_instance" "intro" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "docker-key"
  vpc_security_group_ids = ["sg-0db946f387f1da101"]
  tags = {
    Name    = "jenkins-instance"
    Project = "jenkins-updated"
  }
}