variable "allow_tls" {
  description = "allow tls" 
  type = string
  default = "MyServer" 
} 

variable "ami_id" {
  description = "EC2 Instance AMI ID"
  type        = string
  default     = "ami-0905a3c97561e0b69"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev" 
}

variable = "ingress" {
    description      = "ingress rules"
    type             = list(any)
    default = [
      {
       from_port        = 443
       to_port          = 443
       protocol         = "tcp"
       cidr_blocks      = ["116.30.20.50/32"]
      }, 
      {
       from_port        = 80
       to_port          = 80
       protocol         = "tcp"
       cidr_blocks      = ["116.30.20.50/32"]
      }
    ] 
 } 