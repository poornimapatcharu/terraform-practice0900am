resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "name" {
  vpc_id     = aws_vpc.name.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_instance" "name" {
  ami                    = "ami-00e801948462f718a"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.name.id
  vpc_security_group_ids = [aws_security_group.name.id]

  
}

resource "aws_security_group" "name" {
  name        = "my_security_group"
  description = "Allow SSH traffic"
  vpc_id      = aws_vpc.name.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "tf-practice-test-two-day8-depends-20260614"

  
}
