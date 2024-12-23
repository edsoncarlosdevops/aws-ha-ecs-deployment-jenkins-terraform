
variable "region" {
  description = "The region"
  default     = "us-east-1"
}


variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "myvpc"
}

variable "sg_name" {
  description = "The name of the security group"
  default     = "sg"
}

variable "ecs_task_execution_name" {
  description = "The name of the policy"
  default     = "ECS-execution-role-policy"
}

variable "public_subnet_cidr_block_1" {
  description = "The CIDR block for the public subnet 1"
  default     = "10.0.1.0/24"
}

variable "availability_zone_1" {
  description = "The availability zone for the public subnet 1"
  default     = "us-east-1a"
}

variable "public_subnet_cidr_block_2" {
  description = "The CIDR block for the public subnet 2"
  default     = "10.0.2.0/24"
}

variable "availability_zone_2" {
  description = "The availability zone for the public subnet 2"
  default     = "us-east-1b"
}

variable "ig_name" {
  description = "The name of the internet gateway"
  default     = "Internet-Gateway"
}

variable "alb_name" {
  description = "The name of the application load balancer"
  default     = "myalb"

}

variable "tg_name" {
  description = "The name of the target group"
  default     = "mytg"

}

variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  default     = "mycluster-test-api-edsoncarlos"

}

variable "desired_count" {
  description = "The number of tasks to run"
  default     = 1
}

variable "deployment_minimum_healthy_percent" {
  description = "The minimum healthy percent for the deployment"
  default     = 100
}

variable "deployment_maximum_percent" {
  description = "The maximum percent for the deployment"
  default     = 200

}

variable "ecs_service_name" {
  description = "The name of the ECS service"
  default     = "my-service"

}

variable "container_name" {
  description = "The name of the container"
  default     = "mycontainer"
}

variable "container_port" {
  description = "The port of the container"
  default     = 5000

}

variable "ecs_task_definition_family" {
  description = "The family of the task definition"
  default     = "nginx"
}

variable "container_memory" {
  description = "The memory of the container"
  default     = 1024
}

variable "container_cpu" {
  description = "The CPU of the container"
  default     = 512
}

variable "container_image" {
  description = "The image of the container"
  default     = "edsoncarlos/edsoncarlos-nw-test-api:latest"
}

variable "cloudwatch_log_group_name" {
  description = "The name of the CloudWatch log group"
  default     = "/ecs/my-task"

}
