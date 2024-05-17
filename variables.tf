variable "region" {
  description = "The AWS region"
  type        = string
}

#DB VPC variables
variable "db_vpc_id" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}

variable "db_vpc_cidr" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}


variable "db_private_subnets" {
  description = "List of private subnets"
  type        = list(string)
}

variable "db_public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

#ECS VPC variables
variable "ecs_vpc_id" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}

variable "ecs_vpc_cidr" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}

variable "ecs_private_subnets" {
  description = "List of private subnets"
  type        = list(string)
}

variable "ecs_public_subnets" {
  description = "List of public subnets"
  type        = list(string)
}

# MSK variables
variable "msk_cluster_name" {
  description = "The name of the MSK cluster"
  type        = string
}

# ECS variables
variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
}

variable "ecs_task_family" {
  description = "The family of the ECS task"
  type        = string
}

variable "ecs_container_name" {
  description = "The name of the container"
  type        = string
}

variable "ecs_container_image" {
  description = "The container image"
  type        = string
}

variable "ecs_container_port" {
  description = "The container port"
  type        = number
}

variable "ecs_host_port" {
  description = "The host port"
  type        = number
}

variable "ecs_cpu" {
  description = "The number of CPU units used by the task"
  type        = string
}

variable "ecs_memory" {
  description = "The amount of memory (in MiB) used by the task"
  type        = string
}

variable "ecs_service_name" {
  description = "The name of the ECS service"
  type        = string
}

variable "ecs_desired_count" {
  description = "The number of instances of the task definition"
  type        = number
}

variable "ecs_security_groups" {
  description = "The security groups for the ECS service"
  type        = list(string)
}

# Aurora variables
variable "aurora_cluster_identifier" {
  description = "The identifier for the Aurora cluster"
  type        = string
}

variable "aurora_engine" {
  description = "The database engine to use"
  type        = string
  default     = "aurora"
}

variable "aurora_engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "aurora_master_username" {
  description = "The master username for the database"
  type        = string
}

variable "aurora_master_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "aurora_instance_count" {
  description = "The number of RDS instances"
  type        = number
}

variable "aurora_instance_class" {
  description = "The class of RDS instances"
  type        = string
}

variable "aurora_vpc_security_group_ids" {
  description = "List of VPC security group IDs for the RDS instances"
  type        = list(string)
}
