provider "azurerm" {
  features {
    
  }
}
module "resource_group" {
  source    = "./modules/resource_group"
  name      = var.resource_group_name
  location  = var.location
}

module "network" {
  source = "./modules/network"
  vnet_name = var.vnet_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  subnet_address_prefixes =  var.subnet_address_prefixes

}

module "vm" {
  source = "./modules/vm"
  name = var.vm_name
  location = module.resource_group.location
  vm_size = var.vm_size
  resource_group_name = module.resource_group.name
  admin_username = var.admin_username
  admin_password = var.admin_password
    network_interface_ids = [
    azurerm_network_interface.int.id
  ]

  os_disk {
    name                 = "${var.vm_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = var.os_disk_size_gb
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

}