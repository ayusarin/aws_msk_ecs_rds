provider "aws" {
  region = var.region
}

resource "aws_rds_cluster" "aurora" {
  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  db_subnet_group_name    = aws_db_subnet_group.default.name
  vpc_security_group_ids  = var.vpc_security_group_ids
}

resource "aws_rds_cluster_instance" "aurora_instances" {
  count                 = var.instance_count
  identifier            = "${var.cluster_identifier}-instance-${count.index}"
  cluster_identifier    = aws_rds_cluster.aurora.id
  instance_class        = var.instance_class
  engine                = var.engine
  engine_version        = var.engine_version
  db_subnet_group_name  = aws_db_subnet_group.default.name
}

resource "aws_db_subnet_group" "default" {
  name       = "${var.cluster_identifier}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.cluster_identifier}-subnet-group"
  }
}
