resource "aws_subnet" "ksh_weba" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "ksh-weba"
  }
}

resource "aws_subnet" "ksh_webc" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true
  tags = {
    Name = "ksh-webc"
  }
}

resource "aws_subnet" "ksh_wasa" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.3.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "ksh-wasa"
  }
}

resource "aws_subnet" "ksh_wasc" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.4.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "ksh-wasc"
  }
}

resource "aws_subnet" "ksh_dba" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.5.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "ksh-dba"
  }
}

resource "aws_subnet" "ksh_dbc" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "100.0.6.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "ksh-dbc"
  }
}
