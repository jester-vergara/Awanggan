#
variable "vpc_to_create" {
  description = "Target VPCs to create, e.g., [\"shared\", \"ap-southeast-1\", \"alpha\"]"
  type        = list(list(string))
}

variable "subnet_to_create" {
  description = "Target subnets to create, e.g., [\"shared\", \"ap-southeast-1\", \"alpha\", \"primus\"]"
  type        = list(list(string))
}

variable "vpc_id" {
  description = "The ID of the VPC for which the subnets are created"
  type        = string
}
