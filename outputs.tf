output "msk_serverless_cluster_arn" {
  description = "ARN of the MSK Serverless cluster"
  value       = module.msk.msk_serverless_cluster_arn
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.ecs.ecs_cluster_id
}

output "aurora_cluster_endpoint" {
  description = "The endpoint of the Aurora cluster"
  value       = module.aurora.aurora_cluster_endpoint
}

output "aurora_cluster_reader_endpoint" {
  description = "The reader endpoint of the Aurora cluster"
  value       = module.aurora.aurora_cluster_reader_endpoint
}
