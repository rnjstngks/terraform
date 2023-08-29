# AWS VPC 생성
resource "aws_vpc" "ksh_vpc" {
  cidr_block           = "100.0.0.0/16"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"
  tags = {
    Name = "ksh-vpc"
  }
}
