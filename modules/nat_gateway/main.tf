#Create NAT Gateway
#Remember: NAT Gateway must be created in a public subnet
resource "aws_nat_gateway" "this" {
  count = length(var.subnet_ids)
  allocation_id = var.allocation_ids[count.index]
  subnet_id = var.subnet_ids[count.index]
  tags = {
    Name = "{var.env}-{var.name}-${count.index}"
  }
}