provider "aws" {
  region = var.region
}

module "msk" {
  source          = "./modules/msk"
  region          = var.region
  cluster_name    = var.msk_cluster_name
  vpc_id          = var.db_vpc_id
  vpc_cidr        = var.db_vpc_cidr 
  private_subnets = var.db_private_subnets
}


/*
module "ecs" {
  source            = "./modules/ecs"
  region            = var.region
  cluster_name      = var.ecs_cluster_name
  task_family       = var.ecs_task_family
  container_name    = var.ecs_container_name
  container_image   = var.ecs_container_image
  container_port    = var.ecs_container_port
  host_port         = var.ecs_host_port
  cpu               = var.ecs_cpu
  memory            = var.ecs_memory
  service_name      = var.ecs_service_name
  desired_count     = var.ecs_desired_count
  subnets           = var.public_subnets
  security_groups   = var.ecs_security_groups
}

module "aurora" {
  source                  = "./modules/aurora"
  region                  = var.region
  cluster_identifier      = var.aurora_cluster_identifier
  engine                  = var.aurora_engine
  engine_version          = var.aurora_engine_version
  master_username         = var.aurora_master_username
  master_password         = var.aurora_master_password
  instance_count          = var.aurora_instance_count
  instance_class          = var.aurora_instance_class
  subnet_ids              = var.private_subnets
  vpc_security_group_ids  = var.aurora_vpc_security_group_ids
}
*/