variable "region" {
  description = "The AWS region"
  type        = string
}

variable "cluster_identifier" {
  description = "The identifier for the Aurora cluster"
  type        = string
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "aurora"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "master_username" {
  description = "The master username for the database"
  type        = string
}

variable "master_password" {
  description = "The master password for the database"
  type        = string
  sensitive   = true
}

variable "instance_count" {
  description = "The number of RDS instances"
  type        = number
}

variable "instance_class" {
  description = "The class of RDS instances"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS instances"
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs for the RDS instances"
  type        = list(string)
}
