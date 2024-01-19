resource "aws_instance" "myliveserver" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.environment
  }
}


resource "aws_security_group" "allow_tls" {
  name        = var.security_group_name

  dynamic "ingress" {
    for_each = var.ingress_rule

    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

tags = {
    Name = var.security_group_tag
  } 
}
