resource "aws_route_table" "ksh_ngrt" {
    vpc_id = aws_vpc.ksh_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.ksh_ngw.id
    }
    tags = {
      Name = "ksh-ngtrt"
    }
}