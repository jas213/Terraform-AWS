module "vpc" {
  source = "../vpc"
}
#EC2 Resource
resource "aws_instance" "vm" {
  ami = "ami-0fcc0bef51bad3cb2"
  instance_type = "t3.micro"
  subnet_id = module.vpc.subnet1id
  tags = {
    Name = var.vmname
  }
}