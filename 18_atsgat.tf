resource "aws_autoscaling_attachment" "ksh_atsgat" {
  autoscaling_group_name = aws_autoscaling_group.ksh_atsg.id
  lb_target_group_arn    = aws_lb_target_group.ksh_albtg.arn
}
