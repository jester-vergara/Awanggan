variable "kms_key_description" {
  description = "Description for the KMS key"
  type        = string
}

variable "key_admins" {
  description = "List of IAM users or roles to be KMS key administrators"
  type        = list(string)
}

variable "key_users" {
  description = "List of IAM users or roles that can use the KMS key"
  type        = list(string)
}

variable "common_tags" {
  description = "Tags to apply to the KMS resources"
  type        = map(string)
}

variable "kms_key_alias" {
  description = "Alias for the KMS key"
  type        = string
}

variable "account_root_arn" {
  description = "The ARN of the root account"
  type        = string
}

variable "kms_deletion_window_in_days" {
  description = "The waiting period, specified in number of days, before the KMS key is deleted"
  type        = number
  default     = 30
}
