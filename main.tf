provider "aws" {
  #version = "~> 4.19.0"
  region = "us-east-1"
}

module "myecs" {
  source         = "./modules/ecs"
  ecr_name       = var.ecr_name
  ecs            = var.ecs
  ecs_task       = "my_first_task"
  fargate_cpu    = var.fargate_cpu
  fargate_memory = var.fargate_memory
  app_port       = var.app_port
  alb            = var.alb
  target_group   = var.target_group
  ecs_service    = var.ecs_service
  ecs_iamrole    = var.ecs_iamrole
}