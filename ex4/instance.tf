resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "intro" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-0db946f387f1da101"]
  tags = {
    Name    = "dove-instance"
    Project = "dove-updated"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER1
    private_key = file("dovekey")
    host        = self.public_ip
  }
}

output "PublicIP" {
  value = aws_instance.intro.public_ip
}

output "PrivateIP" {
  value = aws_instance.intro.private_ip
}

