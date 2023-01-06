terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-96"
    key    = "terraform/backend_exercise6"
    region = "us-east-1"
  }
}