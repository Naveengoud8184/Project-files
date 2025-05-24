provider "aws" {
region  = "ap-southeast-1"
}

resource "aws_instance" "Demoserver" {
  ami           = "ami-0afc7fe9be84307e4"
  instance_type = "t2.micro"
  key_name       = "practice044"
 }
