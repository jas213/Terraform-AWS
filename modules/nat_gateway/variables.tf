variable "allocation_ids" {
  type = list(string)
}
variable "subnet_ids" {
  type = list(string)
}
variable "env" {
  description = "Environment Name"
  default = "dev"
}
variable "name" {
  description = "NAT Gateway Name"
  default = "nat-gateway"
}
