resource "aws_route_table_association" "ksh_rtasa" {
  subnet_id      = aws_subnet.ksh_weba.id
  route_table_id = aws_route_table.ksh_route.id
}

resource "aws_route_table_association" "ksh_rtasc" {
  subnet_id      = aws_subnet.ksh_webc.id
  route_table_id = aws_route_table.ksh_route.id
}