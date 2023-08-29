resource "aws_route_table_association" "ksh_ngrtas_wasa" {
  subnet_id      = aws_subnet.ksh_wasa.id
  route_table_id = aws_route_table.ksh_ngrt.id
}

resource "aws_route_table_association" "ksh_ngrtas_wasc" {
  subnet_id      = aws_subnet.ksh_wasc.id
  route_table_id = aws_route_table.ksh_ngrt.id
}

resource "aws_route_table_association" "ksh_ngrtas_dba" {
  subnet_id      = aws_subnet.ksh_dba.id
  route_table_id = aws_route_table.ksh_ngrt.id
}

resource "aws_route_table_association" "ksh_ngrtas_dbc" {
  subnet_id      = aws_subnet.ksh_dbc.id
  route_table_id = aws_route_table.ksh_ngrt.id
}