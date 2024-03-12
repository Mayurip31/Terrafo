# Defining the Variable

variable "region" {
    type = string
    description = "providing region"
}

variable "ami" {
    type = string
    description = "AMI for server"
}

variable "instance_type" {
    type = string
    description = "type of instance"
  
}

variable "key_name" {
    type = string
    description = "Providing key to the server"
  
}

variable "tags" {

    type = "string"
    description = "for identification"
  
}

