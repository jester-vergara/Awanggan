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

variable "tags" {
  description = "Tags to apply to EKS resources"
  type        = map(string)
  default     = {}
}

variable "enable_logging" {
  description = "Enable logging for the EKS cluster"
  type        = bool
  default     = false
}

variable "log_types" {
  description = "Types of logs to enable for the EKS cluster"
  type        = list(string)
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

variable "endpoint_private_access" {
  description = "Indicates whether the EKS private API server endpoint is enabled"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Indicates whether the EKS public API server endpoint is enabled"
  type        = bool
  default     = true
}
