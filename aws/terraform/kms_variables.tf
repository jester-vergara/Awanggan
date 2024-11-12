variable "alias_name" {
  description = "Alias name for the KMS key"
  type        = string
  default     = "awanggan-dynamodb-kms-key"
}

variable "enable_key_rotation" {
  description = "Enable automatic key rotation for the KMS key"
  type        = bool
  default     = true
}

variable "deletion_window_in_days" {
  description = "Number of days before deletion after scheduled deletion of KMS key"
  type        = number
  default     = 30
}

variable "kms_key_id" {
  type        = string
  description = "The KMS key ID for encryption"
}