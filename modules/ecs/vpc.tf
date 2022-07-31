
#VPC Creation

# Providing a reference to our default VPC
resource "aws_default_vpc" "default_vpc" {
}

# Providing a reference to our default subnets
resource "aws_default_subnet" "default_subnet_a" {
  availability_zone = var.region[0]
}

resource "aws_default_subnet" "default_subnet_b" {
  availability_zone = var.region[1]
}

resource "aws_default_subnet" "default_subnet_c" {
  availability_zone = var.region[2]
}