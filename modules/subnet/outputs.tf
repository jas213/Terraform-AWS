output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value = aws_subnet.public_subnet[*].id
}
output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value = aws_subnet.private_subnet[*].id
}
