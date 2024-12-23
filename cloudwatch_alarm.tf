resource "aws_cloudwatch_metric_alarm" "ecs_cpu_utilization_alarm" {
  alarm_name          = "ecs-cpu-utilization-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = "60"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "This metric monitors CPU utilization"
  dimensions = {
    ServiceName = aws_ecs_service.ecs-service.name
    ClusterName = aws_ecs_cluster.ecs-cluster.name
  }
  treat_missing_data = "notBreaching"
  unit               = "Percent"

}