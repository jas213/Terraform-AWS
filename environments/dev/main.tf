#Calling Modules

#Create VPC Network
module "vpc" {
  source = "../../modules/vpc"
}

#Create Subnetwork
module "subnet" {
  source = "../../modules/subnet"
  vpc_id = module.vpc.vpc_id
}

#Create Internet Gateway
module "ig" {
  source = "../../modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}
#Create Elastic IP
#Note: EIP may require IGW to exist prior to association. Use depends_on to set an explicit dependency on the IGW.
module "elastic_ip" {
  source = "../../modules/elastic_ip"
  subnet_ids = module.subnet.public_subnet_ids
}

#Create NAT Gateway
module "ng" {
  source = "../../modules/nat_gateway"
  subnet_ids = module.subnet.public_subnet_ids
  allocation_ids = module.elastic_ip.allocation_ids
}