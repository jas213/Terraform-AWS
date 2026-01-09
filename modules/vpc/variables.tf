#VPC CIIDR Range
variable "vpc_cidr" {
  type = string
  description = "VPC CIDR Values"
  default = "10.0.0.0/16"
}
variable "name" {
  type = string
  description = "VPC Name"
  default = "Terraform-VPC"
}


