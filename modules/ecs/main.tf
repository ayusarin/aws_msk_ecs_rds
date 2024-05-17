
resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "task" {
  family                   = var.task_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.cpu
  memory                   = var.memory

  container_definitions = jsonencode([
    {
      name  = var.container_name
      image = var.container_image
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.host_port
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "service" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.task.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"
  network_configuration {
    subnets         = var.subnets
    security_groups = [aws_security_group.ecs_sg.id]
  }
}

#ecs Security Group
resource "aws_security_group" "ecs_sg" {
  name        = var.cluster_name
  description = "Security group for web servers"
  
  vpc_id = var.vpc_id

  // Ingress rules
  ingress {
    from_port   = 1
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }


  // Egress rules
  egress {
    from_port   = 1
    to_port     = 65535
    protocol    = "tcp"  # Allow all HTTPS outbound traffic
    cidr_blocks = [var.vpc_cidr]
  }
}