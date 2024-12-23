
resource "aws_ecs_service" "ecs-service" {
  name                               = var.ecs_service_name
  cluster                            = aws_ecs_cluster.ecs-cluster.id
  task_definition                    = aws_ecs_task_definition.td.arn
  desired_count                      = var.desired_count
  launch_type                        = "FARGATE"
  platform_version                   = "LATEST"
  deployment_maximum_percent         = var.deployment_maximum_percent
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent

  network_configuration {
    subnets          = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]
    security_groups  = [aws_security_group.sg.id]
    assign_public_ip = true
  }
  load_balancer {
    target_group_arn = aws_lb_target_group.tg.arn
    container_name   = var.container_name
    container_port   = var.container_port
  }
  tags = {
    Name = var.ecs_service_name

  }

}

  