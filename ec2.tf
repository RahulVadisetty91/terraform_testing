provider "aws" {
  region = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


resource "aws_instance" "web" {
  ami           = "ami-6871a115"
  instance_type = "t2.micro"

  tags {
    Name = "terraform"
  }
}
output "ip"{
value= "${aws_instance.web.public_ip}"
}