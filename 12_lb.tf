resource "aws_lb" "ksh_alb" {
  name               = "ksh-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ksh_sg.id]
  subnets            = [aws_subnet.ksh_weba.id, aws_subnet.ksh_webc.id]
  tags = {
    Name = "ksh-alb"
  }
}

output "alb_dns_name" {
  value = aws_lb.ksh_alb.dns_name
}
