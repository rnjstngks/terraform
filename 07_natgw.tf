resource "aws_eip" "ksh_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "ksh_ngw" {
  allocation_id = aws_eip.ksh_eip.id
  subnet_id     = aws_subnet.ksh_weba.id
  tags = {
    Name = "ksh-ngw"
  }
}

output "eip_public_ip" {
    value = aws_eip.ksh_eip.public_ip
}