#Create Public Route Table 
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.publicrtname
  }
}
#Create Private Route Table
resource "aws_route_table" "private" {
  count  = length(var.nat_gateway_ids)
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_ids[count.index]
  }

  tags = {
    Name = "${var.privatertname}-${count.index}"
  }
}
