data "aws_subnet" "name" {
  filter {
    name   = "tag:Name"
    values = ["subnet-1"] #tetch the subnet with the tag name=subnet-1
  }
  
}
data "aws_security_group" "name" {
  filter {
    name   = "tag:Name"
    values = ["security-group-1"] #fetch the security group with the tag name=security-group-1
  }
}

resource "aws_instance" "name" {
  ami                    = "ami-00e801948462f718a"
  instance_type          = "t2.micro"
    subnet_id              = data.aws_subnet.name.id
    tags = {
    Name = "my-instance"}
  
  

  
}
