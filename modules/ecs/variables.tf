variable "ecr_name" {
    type = string
    description = "ECR repo name"
}

variable "ecs" {
    type = string
    description = "ECS cluster name"
}

variable "ecs_task" {
    type = string
    description = "ecs task defination name"
}

variable "fargate_cpu" {
  type = string
  description = "fargate instacne CPU units to provision,my requirent 1 vcpu so gave 1024"
}

variable "fargate_memory" {
  type = string
  description = "Fargate instance memory to provision (in MiB) not MB"
}

variable "app_port" {
  type = string
  description = "portexposed on the docker image"
}

variable "alb" {
    type = string
    description = "application load balancer"
}

variable "target_group" {
    type = string
    description = "target group"
}

variable "ecs_service" {
    type = string
    description = "ecs service"
}

variable "ecs_iamrole" {
    type = string
    description = "IAM role for ecs service"
}

variable "region" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"]
    description = "availablity zone for subnet"
}

variable "sg_ports_ingress" {
    type = list(number)
    description = "list of ingress ports"
    default = [80, 443]
}

variable "sg_ports_egress" {
    type = list(number)
    description = "list of egress ports"
    default = [0]
}
