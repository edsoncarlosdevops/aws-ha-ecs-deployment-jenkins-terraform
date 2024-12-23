resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnet_cidr_block_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-public-subnet-1"
  }

}

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnet_cidr_block_2
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}-public-subnet-2"
  }

}