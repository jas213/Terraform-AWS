#Create Intenet Gateway to Connect VPC with Internet
resource "aws_internet_gateway" "public_igw" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.name 
  }
}