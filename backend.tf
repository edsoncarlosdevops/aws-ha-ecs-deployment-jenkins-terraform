# terraform {
#   backend "s3" {
#     bucket  = "aws-ha-ecs-deployment-jenkins-terraform"
#     key     = "ecs-fargate/backend.tfstate"
#     region  = "us-east-1"
#     encrypt = true
#   }
# }

#https://rderik.com/blog/how-to-set-up-a-new-terraform-project-using-s3-backend-and-dynamodb-locking/