variable "vpc_id" {
  type        = string
  description = "VPC ID"
}


variable "igw_id" {
  type        = string
  description = "Internet Gateway ID"
}

variable "nat_gateway_ids" {
  type        = list(string)
  description = "NAT Gateway IDs"
}

variable "publicrtname" {
  type = string
  default = "public-rt"
}
variable "privatertname" {
  type = string
  default = "private-rt"
}