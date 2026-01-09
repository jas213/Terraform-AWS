#Elastic IP 
resource "aws_eip" "nat" {
  #Specifies that this EIP is for use within the VPC
  count = length(var.subnet_ids)
  domain = "vpc"
  tags = {
    Name = "${var.env}-${var.name}"
  }
}