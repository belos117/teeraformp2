resource "aws_instance" "myliveserver" {
  ami           = "ami-0905a3c97561e0b69"
  instance_type = "t2.micro"

  tags = {
    Name = "dev"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
 
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["116.30.20.50/32"]
 
  }

  ingress {
   description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["116.30.20.50/32"]
 }

   ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
   cidr_blocks      = ["116.30.20.50/32"]
  }

  tags = {
    Name = “manual”
  } 
}
