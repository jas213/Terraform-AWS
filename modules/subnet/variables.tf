#Public Subnet IP Ranges
variable "cidr_public_subnet" {
  type = list(string)
  description = "Public Subnet CIDR Values"
  default = ["10.0.1.0/24","10.0.2.0/24"]
}
#Private Subnet IP Ranges
variable "cidr_private_subnet" {
  type = list(string)
  description = "Private Subnet CIDR Values"
  default = ["10.0.3.0/24","10.0.4.0/24"]
}
#Availability Zone
variable "az" {
  type = list(string)
  description = "Availability Zone"
  default = [ "us-west-1a","us-west-1c" ]
}
variable "vpc_id" {
  type = string
  description = "VPC ID"
}