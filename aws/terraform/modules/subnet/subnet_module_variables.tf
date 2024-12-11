variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created"
  type        = string
}

variable "subnets" {
  description = <<EOT
List of subnets to create. Each subnet must have:
- name: Subnet name
- cidr_block: CIDR block for the subnet
- az: Availability zone for the subnet
- type: Subnet type (e.g., APP-PRIVATE, APP-PUBLIC, RDS, etc.)
EOT
  type = list(object({
    name        = string
    cidr_block  = string
    az          = string
    type        = string
  }))
}

variable "tags" {
  description = "Tags to apply to the subnets"
  type        = map(string)
  default     = {}
}
