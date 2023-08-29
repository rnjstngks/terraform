resource "aws_launch_template" "ksh_lt" {
  name = "ksh-lt"

  block_device_mappings {
    device_name = "/dev/sdf"
    ebs {
      volume_size = 10
      volume_type = "gp2"
    }
  }
  image_id               = aws_ami_from_instance.ksh_ami.id
  instance_type          = "t2.micro"
  key_name               = "ksh1"
  vpc_security_group_ids = [aws_security_group.ksh_sg.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "ksh-temp"
    }
  }
  #    user_data = filebase64("${path.module}/install.sh") # 반드시 암호화한 UserData 사용
}
