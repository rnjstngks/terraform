resource "aws_ami_from_instance" "ksh_ami" {
  name               = "ksh-ami"
  source_instance_id = aws_instance.ksh-ec2_weba.id
  depends_on = [
    aws_instance.ksh-ec2_weba
  ]
  tags = {
    Name = "ksh-ami"
  }
}
