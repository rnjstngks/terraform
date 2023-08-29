resource "aws_route_table" "ksh_route" {
  vpc_id = aws_vpc.ksh_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ksh_igw.id
  }
  tags = {
    Name = "ksh-route"
  }
}