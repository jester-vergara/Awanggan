variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "cluster_role_arn" {
  type        = string
  description = "IAM role ARN for the EKS cluster"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for the EKS cluster"
}

variable "node_group_name" {
  type        = string
  description = "Name of the EKS node group"
}

variable "node_role_arn" {
  type        = string
  description = "IAM role ARN for the node group"
}

variable "instance_types" {
  type        = list(string)
  description = "List of instance types for the EKS nodes"
}

variable "desired_size" {
  type        = number
  description = "Desired size of the EKS node group"
}

variable "max_size" {
  type        = number
  description = "Maximum size of the EKS node group"
}

variable "min_size" {
  type        = number
  description = "Minimum size of the EKS node group"
}
