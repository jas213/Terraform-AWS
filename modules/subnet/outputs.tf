output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value = aws_subnet.public_subnet[*].id
}
