output "allocation_ids" {
  description = "Elastic IP Allocation ID"
  value = aws_eip.nat[*].id
}
output "public_ip" {
    description = "Public IP"
    value = aws_eip.nat[*].public_ip
}