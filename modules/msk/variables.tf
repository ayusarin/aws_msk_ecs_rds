variable "region" {
  description = "The AWS region"
  type        = string
}

variable "cluster_name" {
  description = "The name of the MSK cluster"
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

variable "private_subnets" {
  description = "List of private subnets for MSK"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnets for MSK"
  type        = list(string)
}