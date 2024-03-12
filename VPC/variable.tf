variable "region" {
    type = string
    description = "region of vpc"
  
}


variable "cidr_block" {
  type = string
  description = "range for vpc"
}

variable "private_cidr_block" {
  type = string
  description = "range for private subnet"
}

variable "public_cidr_block" {
  type = string
  description = "range for public subnet"
}

variable "public_ip" {
    type = bool
    description = "enabling public ip"
  
}