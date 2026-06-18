resource "aws_s3_bucket" "name" {
    bucket = "srivalliuddanti"
    provider = "aws.dev_nit"
  
}

resource "aws_s3_bucket" "name2" {
    bucket = "srikariuddanti"
    provider = "aws.test_nit"
  
}

resource "aws_s3_bucket" "name3" {
    bucket = "karthikpoornima"
    provider = "aws.prod_nit"
    
  
}