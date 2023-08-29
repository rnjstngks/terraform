resource "aws_internet_gateway" "ksh_igw" {
  vpc_id = aws_vpc.ksh_vpc.id
  tags = {
    Name = "ksh-igw"
  }
}
