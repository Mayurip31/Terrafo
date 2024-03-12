# Infrastructure module

provider "aws" {
    region = var.region
  
}

terraform {
  backend "s3" {
     bucket = "terraformconfigdata"
     key    = "terraform.tfstate"
     region = "us-east-1"
     dynamodb_table = "terraform-staging"
   }
 }

resource "aws_instance" "server" {

    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = var.tags

}