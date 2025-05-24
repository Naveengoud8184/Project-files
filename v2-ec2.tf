provider "aws" {
region  = "ap-southeast-1"
}

resource "aws_instance" "Demoserver1" {
  ami           = "ami-0afc7fe9be84307e4"
  instance_type = "t2.micro"
  key_name       = "practice044"
  security_groups = [ "demo-sg" ]
 }

 resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "SSH Access"

  ingress {
    description = "SSH access"
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

  tags = {
    Name = "SSH-port"
  }
}