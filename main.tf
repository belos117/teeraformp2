resource "aws_instance" "myliveserver" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.environment
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.name
  description = "Allow TLS inbound traffic"

  tags = {
    Name = “manual”
  } 
}
