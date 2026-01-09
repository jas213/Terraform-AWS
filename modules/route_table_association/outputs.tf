output "public_association_ids" {
  value = aws_route_table_association.public[*].id
}

output "private_association_ids" {
  value = aws_route_table_association.private[*].id
}
