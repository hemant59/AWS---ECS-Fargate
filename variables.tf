variable "ecr_name" {
  type        = string
  description = "ECR repo name"
}

variable "ecs" {
  type        = string
  description = "ECS cluster name"
}

variable "fargate_cpu" {
  type        = string
  description = "fargate instacne CPU units to provision,my requirent 1 vcpu so gave 1024"
}

variable "fargate_memory" {
  type        = string
  description = "Fargate instance memory to provision (in MiB) not MB"
}

variable "app_port" {
  type        = string
  description = "portexposed on the docker image"
}

variable "alb" {
  type        = string
  description = "application load balancer"
}

variable "target_group" {
  type        = string
  description = "target group"
}

variable "ecs_service" {
  type        = string
  description = "ecs service"
}

variable "ecs_iamrole" {
  type        = string
  description = "IAM role for ecs service"
}
