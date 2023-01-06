variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0b5eea76982371e91"
  }
}

variable "USER1" {
  default = "ec2-user"
}
