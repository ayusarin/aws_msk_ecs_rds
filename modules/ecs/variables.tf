variable "region" {
  description = "The AWS region"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where MSK will be deployed"
  type        = string
}

variable "vpc_cidr" {
  description = "The VPC CIDR"
  type        = string
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "task_family" {
  description = "The family of the ECS task"
  type        = string
}

variable "container_name" {
  description = "The name of the container"
  type        = string
}

variable "container_image" {
  description = "The container image"
  type        = string
}

variable "container_port" {
  description = "The container port"
  type        = number
}

variable "host_port" {
  description = "The host port"
  type        = number
}

variable "cpu" {
  description = "The number of CPU units used by the task"
  type        = string
}

variable "memory" {
  description = "The amount of memory (in MiB) used by the task"
  type        = string
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "desired_count" {
  description = "The number of instances of the task definition"
  type        = number
}

variable "subnets" {
  description = "The subnets for the ECS service"
  type        = list(string)
}

variable "security_groups" {
  description = "The security groups for the ECS service"
  type        = list(string)
}
