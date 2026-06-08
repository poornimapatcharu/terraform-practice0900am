terraform {
  backend "s3" {
    bucket = "mybucketnamepoornima"
    key    = "terraform.tfstate"
    use_lockfile = true #s3 native locking process to prevent concurrent modifications 
    region = "us-east-1"
  }
}
