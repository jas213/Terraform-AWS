#Step -2: Create 2 Public and 2 Private Subnets
#Setup Public Setup
#Note: A VPC must Exist or Created Before Creating a Subnet
#Create 2 Public Subnets
resource "aws_subnet" "public_subnet" {
  count = length(var.cidr_public_subnet)
  vpc_id = var.vpc_id
  cidr_block = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.az, count.index)
  tags={
    Name="Subnet-Public:Public Subnet ${count.index +1}"
  }
}
#Setup Private Subnet
#Note: A VPC must Exist or Created Before Creating a Subnet
#Create 2 Private Subnets
resource "aws_subnet" "private_subnet" {
  count = length(var.cidr_private_subnet)
  vpc_id = var.vpc_id
  cidr_block = element(var.cidr_private_subnet, count.index)
  availability_zone =  element(var.az, count.index)
  tags={
    Name="Subnet-Private:Private Subnet ${count.index +1}"
  }
}
