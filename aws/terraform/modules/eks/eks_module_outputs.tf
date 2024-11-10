output "cluster_id" {
  value       = aws_eks_cluster.cluster.id
  description = "The ID of the EKS cluster"
}

output "node_group_id" {
  value       = aws_eks_node_group.node_group.id
  description = "The ID of the EKS node group"
}

output "cluster_endpoint" {
  value       = aws_eks_cluster.cluster.endpoint
  description = "The endpoint of the EKS cluster"
}

output "cluster_version" {
  value       = aws_eks_cluster.cluster.version
  description = "The Kubernetes version of the EKS cluster"
}
