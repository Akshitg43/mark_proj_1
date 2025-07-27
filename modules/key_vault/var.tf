variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "sku_name" {
  type = string
}
variable "enabled_for_disk_encryption" {
  type = bool
}
variable "purge_protection_enabled" {
  type = bool
}
variable "soft_delete_retention_days" {
  type = number
}
variable "tenant_id" {
  
}
variable "access_policy_object_id" {
  type        = string
  description = "Object ID of the principal to grant Key Vault access"
}