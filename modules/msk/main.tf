
resource "aws_msk_serverless_cluster" "this" {
  cluster_name           = var.cluster_name

  vpc_config {
    subnet_ids         = var.private_subnets
    security_group_ids = [aws_security_group.msk_sg.id]
  }

  client_authentication {
    sasl {
      iam {
        enabled = true
      }
    }
  }
}


#msk Security Group
resource "aws_security_group" "msk_sg" {
  name        = var.cluster_name
  description = "Security group for web servers"
  
  vpc_id = var.vpc_id

  // Ingress rules
  ingress {
    from_port   = 9092
    to_port     = 9092
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }


  // Egress rules
  egress {
    from_port   = 9092
    to_port     = 9092
    protocol    = "tcp"  # Allow all HTTPS outbound traffic
    cidr_blocks = [var.vpc_cidr]
  }

}