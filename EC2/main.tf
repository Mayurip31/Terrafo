# Infrastructure module

provider "aws" {
    region = var.region
  
}

resource "aws_instance" "server" {

    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

    tags = var.tags



  
}