resource "azurerm_key_vault" "kv" {
  name = var.name
  location = var.location
  resource_group_name = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled = var.purge_protection_enabled
  sku_name = var.sku_name
  }