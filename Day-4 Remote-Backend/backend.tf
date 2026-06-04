terraform {
  backend "s3" {
    bucket = "mybucketnamepoornima"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
