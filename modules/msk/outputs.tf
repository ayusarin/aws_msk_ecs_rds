output "msk_serverless_cluster_arn" {
  description = "ARN of the MSK Serverless cluster"
  value       = aws_msk_serverless_cluster.this.arn
}
