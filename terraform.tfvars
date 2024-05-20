
region                   = "us-west-2"

#DB VPC
db_vpc_id                   = "vpc-12345678"
db_vpc_cidr                 = "10.0.0.1/16"
db_private_subnets          = ["subnet-12345678", "subnet-87654321"]
db_public_subnets           = ["subnet-23456789", "subnet-98765432"]


#ECS VPC
ecs_vpc_id                   = "vpc-12345678"
ecs_vpc_cidr                 = "10.0.0.1/16"
ecs_private_subnets          = ["subnet-12345678", "subnet-87654321"]
ecs_public_subnets           = ["subnet-23456789", "subnet-98765432"]

# MSK variables
msk_cluster_name         = "my-msk-cluster"

# ECS variables
ecs_cluster_name         = "my-ecs-cluster"
ecs_task_family          = "my-ecs-task-family"
ecs_container_name       = "my-container"
ecs_container_image      = "nginx:latest"
ecs_container_port       = 80
ecs_host_port            = 80
ecs_cpu                  = "256"
ecs_memory               = "512"
ecs_service_name         = "my-ecs-service"
ecs_desired_count        = 2

# Aurora variables
aurora_cluster_identifier = "my-aurora-cluster"
aurora_engine            = "aurora"
aurora_engine_version    = "5.6.mysql_aurora.1.22.1"
aurora_master_username   = "##"
aurora_master_password   = "##"
aurora_instance_count    = 2
aurora_instance_class    = "db.r5.large"
aurora_vpc_security_group_ids = ["sg-87654321"]
