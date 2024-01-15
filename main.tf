resource "aws_instance" "myliveserver" {
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t2.micro"

  tags = {
    Name = "dev"
  }
}