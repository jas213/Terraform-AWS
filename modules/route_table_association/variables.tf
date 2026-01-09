variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnet IDs"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs"
}

variable "public_route_table_id" {
  type        = string
  description = "Public route table ID"
}

variable "private_route_table_ids" {
  type        = list(string)
  description = "Private route table IDs"
}
