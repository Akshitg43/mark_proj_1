resource "azurerm_network_interface" "int" {
  name = "${var.vm_name}-nic"
  location = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
    name = "internal"
    subnet_id = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}




resource "azurerm_virtual_machine" "vm" {
  name = var.vm_name
  location = var.location
  resource_group_name = var.resource_group_name
  vm_size = var.vm_size
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
