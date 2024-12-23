resource "aws_ecs_task_definition" "td" {
  family                   = var.ecs_task_definition_family
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.iam-role.arn
  network_mode             = "awsvpc"
  cpu                      = var.container_cpu
  memory                   = var.container_memory
  container_definitions = jsonencode(
    [
      {
        name      = var.container_name
        image     = var.container_image
        cpu       = var.container_cpu
        memory    = var.container_memory
        essential = true
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = var.cloudwatch_log_group_name
          "awslogs-region"        = var.region
          "awslogs-stream-prefix" = var.container_name
        }


        portMappings = [
          {
            containerPort = var.container_port
            hostPort      = var.container_port
          }
        ]
      }
  ])
}