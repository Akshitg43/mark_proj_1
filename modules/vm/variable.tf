variable "vm_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
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
}


variable "subnet_id" {
  type = string
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