/*
data "aws_ami" "ksh-ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-kernel 5.10-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}
*/

# output "ami_id" {
#    value = data.aws_ami.ksh-ami.image_id
# }

resource "aws_instance" "ksh-ec2_weba" {
  ami                    = "ami-084e92d3e117f7692"
  instance_type          = "t2.small"
  key_name               = "ksh1"
  vpc_security_group_ids = [aws_security_group.ksh_sg.id]
  availability_zone      = "ap-northeast-2a"
  private_ip             = "100.0.1.11"
  subnet_id              = aws_subnet.ksh_weba.id
  user_data              = file("./install.sh")
  /*  
  user_data              = <<eof
    #! /bin/bash
    yum install -y httpd
    echo 'hello terraform' > /var/www/html/index.html
    systemctl enable --now httpd
    eof
*/

  tags = {
    Name = "ksh-ec2-weba"
  }
}

output "ec2-weba-ip" {
  value = aws_instance.ksh-ec2_weba.public_ip
}
