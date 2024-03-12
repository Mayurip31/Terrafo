provider "aws" {
    region = var.region
  
}

resource "aws_vpc" "vpc" {

 cidr_block = var.cidr_block

 tags = {
   Name = "newvpc"
 }
  
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = var.private_cidr_block

  tags = {
    Name = "pvt_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.public_cidr_block

     tags = {
       Name = "pub_subnet"
  }
  map_public_ip_on_launch = var.public_ip
  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "igw"
    }
}

resource "aws_default_route_table" "default_rt" {
    default_route_table_id = aws_vpc.vpc.default_route_table_id

    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "new-rt"
  }
  
}

