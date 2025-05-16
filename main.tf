provider "aws" {
  region = "eu-west-1"
  profile = "dev-terraform"
}
resource "aws_vpc" "example" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "example" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-03d8b47244d950bbb"
  instance_type = "c6a.2xlarge"
  subnet_id     = aws_subnet.example.id

  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

  tags = {
    Name = "tf-example"
  }
}