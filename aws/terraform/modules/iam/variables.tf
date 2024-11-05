variable "role_name" {
  type        = string
  description = "Name of the IAM role"
}

variable "assume_role_policy" {
  type        = string
  description = "Policy that grants an entity permission to assume the role"
}

variable "policy_name" {
  type        = string
  description = "Name of the IAM policy"
}

variable "policy_description" {
  type        = string
  description = "Description of the IAM policy"
}

variable "policy_document" {
  type        = string
  description = "JSON policy document for the IAM policy"
}
