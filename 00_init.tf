terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

# AWS 지역 설정
provider "aws" {
  region = "ap-northeast-2"
}