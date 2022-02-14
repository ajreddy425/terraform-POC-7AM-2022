// creting alarm

# resource "aws_cloudwatch_metric_alarm" "my_alarm" {
#   alarm_name          = "terraform-sns-alarm"
#   comparison_operator = "LessThanOrEqualToThreshold"
#   evaluation_periods  = "1"
#   metric_name         = "CPUUtilization"
#   namespace           = "AWS/EC2"
#   period              = "60"
#   statistic           = "Average"
#   threshold           = "20" // 20
#   alarm_description   = "This metric monitors ec2 cpu utilization"
#   # alarm_actions       = [aws_sns_topic.sns_terraform.arn]
#   // copy topic arn correctly
#   dimensions = {
#     InstanceId = "i-00020dc0107ba0a4f"
#   }
# }