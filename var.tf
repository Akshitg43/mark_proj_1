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
}
variable "disk_size_gb" {
  type = string
}