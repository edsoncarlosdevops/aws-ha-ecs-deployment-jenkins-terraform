resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.rt.id

}

resource "aws_route_table_association" "rta-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.rt.id
}