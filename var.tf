variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "subnet_address_prefixes" {
  type = list(string)
}
variable "vnet_name" {
  type = string
}
variable "vm_name" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type = string
  sensitive = true
}

variable "network_interface_ids" {
  type = list(string)
}
variable "os_disk" {
  type = object({
    name                 = string
    caching              = string
    storage_account_type = string
    disk_size_gb         = number
  })
}
variable "source_image_reference" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
variable "os_disk_size_gb" {
  type    = number
}
variable "key_vault_name" {
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

variable "secret_value" {
  type = string
}
variable "key_vault_id" {
  type = string
}

variable "vm_password" {
  description = "Password for the VM"
  type        = string
  sensitive   = true
}
variable "object_id" {
  type = string
}
variable "public_ip_name" {
  type = string
}
variable "allocation_method" {
  
}
variable "sku" {
  
}
