provider "aws" {
    profile = "dev"
    alias = "dev_nit"
    region = "us-east-1"
  
}


provider "aws" {
    profile = "test"
    region = "us-west-2"
    alias = "test_nit"
  
}

provider "aws" {
    profile = "prod"
    alias = "prod_nit"
    region = "us-east-1"
  
}
