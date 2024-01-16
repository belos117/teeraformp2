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