terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  #profile             = "terraform" 
  region              = "ap-south-1"
}


resource "aws_rds_cluster" "example" {
  cluster_identifier = "example"
  engine             = "aurora-postgresql"
  engine_mode        = "provisioned"
  engine_version     = "15.4"
  database_name      = "test"
  master_username    = "test"
  manage_master_user_password = true
  master_user_secret_kms_key_id = aws_kms_key.example.key_id
  storage_encrypted  = true

  serverlessv2_scaling_configuration {
    max_capacity = 1.0
    min_capacity = 0.5
  }
}

resource "aws_rds_cluster_instance" "example" {
  cluster_identifier = aws_rds_cluster.example.id
  instance_class     = "db.serverless"
  engine             = aws_rds_cluster.example.engine
  engine_version     = aws_rds_cluster.example.engine_version
}

resource "aws_kms_key" "example" {
  description = "Example KMS Key"
}