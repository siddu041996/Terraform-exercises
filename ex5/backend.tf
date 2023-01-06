terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-96"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}