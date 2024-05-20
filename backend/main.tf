terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" 
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "ayu-terraform-state-bucket"

  tags = {
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}


output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}
