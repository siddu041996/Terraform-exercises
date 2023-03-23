terraform {
  backend "s3" {
    bucket = "terraform-state-siddu1"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}