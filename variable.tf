variable "ami_id" {
  description = "EC2 Instance AMI ID"
  type        = string
  default     = "ami-0905a3c97561e0b69"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev" 
}

variable "security_group_name" {
  description = "Allow TLS inbound traffic"
  type        = string 
  default     = "allow_tls" 
}

variable "ingress_rule" {
    description      = "TLS from VPC"
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

variable "security_group_tag" {
  description = "Security Group Tag" 
  type        = string 
  default     = "manual" 
} 