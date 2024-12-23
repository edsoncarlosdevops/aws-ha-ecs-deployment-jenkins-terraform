resource "aws_iam_role_policy" "ecs_task_execution_policy" {
  name = var.ecs_task_execution_name
  role = aws_iam_role.iam-role.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ecs:ListClusters",
          "ecs:DescribeClusters",
          "ecs:ListContainerInstances",
          "ecs:DescribeContainerInstances",
          "ecs:ListServices",
          "ecs:DescribeServices",
          "ecs:ListTaskDefinitions",
          "ecs:DescribeTasks",
          "ecs:ListTasks",
          "ecs:DescribeTaskSets",
          "ecs:ListTaskSets",
          "ecs:ExecuteCommand",
          "ecs:ListAccountSettings",
          "ecs:PutAccountSetting",
          "ecs:PutAccountSettingDefault",
          "ecs:PutAttributes",
          "ecs:PutClusterCapacityProviders",
          "ecs:RegisterTaskDefinition",
          "ecs:UpdateServicePrimaryTaskSet",
          "ecs:UpdateTaskSet",
          "ecs:UpdateServiceSetting",
          "ecs:UpdateCapacityProvider",
          "ecs:UpdateClusterSettings",
          "ecs:UpdateContainerAgent",
          "ecs:UpdateContainerInstancesState",
          "ecs:UpdateService",
          "ecr:GetAuthorizationToken",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "logs:CreateLogStream",
          "logs:PutLogEvents",
          "cloudwatch:PutMetricData"

        ],
        Resource = "*"
      }
    ]
  })
}
