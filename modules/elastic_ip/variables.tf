variable "name" {
  type = string
  description = "Elastic IP Name"
  default = "Nat-EIP"
}
variable "env" {
  type = string
  description = "Environment"
  default = "dev"
}
variable "subnet_ids" {
  type = list(string)
}