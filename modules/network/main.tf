resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  resource_group_name = var.resource_group_name
  location = var.location
 address_space = var.vnet_address_space
}

resource "azurerm_subnet" "subnet" {
  name = var.subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name = var.resource_group_name
  address_prefixes = var.subnet_address_prefixes
}