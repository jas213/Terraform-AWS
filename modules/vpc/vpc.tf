#VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr
  tags = {
    Name = "main"
  }
}
#Public Subnet 1
resource "aws_subnet" "sub1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.sub1cidr
  availability_zone = var.az1
  map_public_ip_on_launch = true
}
#Public Subnet 2
resource "aws_subnet" "sub2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.sub2cidr
  availability_zone = var.az2
  map_public_ip_on_launch = true
}
#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
#Route Table
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
#Route Table Association
resource "aws_route_table_association" "a1" {
  subnet_id = aws_subnet.sub1.id
  route_table_id = aws_route_table.rt.id
}
#Route Table Association
resource "aws_route_table_association" "a2" {
  subnet_id = aws_subnet.sub2.id
  route_table_id = aws_route_table.rt.id
}