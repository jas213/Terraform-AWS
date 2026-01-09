#Setup AWS VPC in eu-central-1
#CIDR: 10.0.0.0/16
#First Run Terraform Init, Plan, Apply and Create VPC as a Step 1 in AWS Account
resource "aws_vpc" "this"{
    cidr_block=var.vpc_cidr
    tags={
        Name=var.name
    }
}