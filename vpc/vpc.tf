resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "dev_vpc"
  }
}
resource "aws_subnet" "pub-sub-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true //it makes it public subnet
  availability_zone       = "us-east-1a"
  tags = {
    "Name" = "dev-public-subnet-1"
  }
}
resource "aws_subnet" "pub-sub-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"
  tags = {
    "Name" = "dev-public-subnet-2"
  }
}
resource "aws_subnet" "pub-sub-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1c"
  tags = {
    "Name" = "dev-public-subnet-3"
  }
}
resource "aws_subnet" "priv-sub-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "dev-private-subnet-1"
  }
}
resource "aws_subnet" "priv-sub-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.12.0/24"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "dev-private-subnet-1"
  }
}
resource "aws_subnet" "priv-sub-3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.13.0/24"
  availability_zone = "us-east-1c"
  tags = {
    "Name" = "dev-private-subnet-3"
  }
}
