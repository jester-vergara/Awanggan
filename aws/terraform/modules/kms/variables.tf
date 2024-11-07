variable "description" {
  description = "Description of the KMS key"
  type        = string
  default     = "KMS key for Project Awanggan"
}

variable "enable_key_rotation" {
  description = "Enable automatic key rotation"
  type        = bool
  default     = true
}

variable "deletion_window_in_days" {
  description = "Number of days before deletion after scheduled deletion"
  type        = number
  default     = 30
}

variable "alias_name" {
  description = "Unique alias name for the KMS key"
  type        = string
}

variable "tags" {
  description = "Tags for the KMS key"
  type        = map(string)
  default     = {}
}
