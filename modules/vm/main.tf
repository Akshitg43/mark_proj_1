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




resource "azurerm_linux_virtual_machine" "vm" {
  name = var.vm_name
  location = var.location
  resource_group_name = var.resource_group_name
  vm_size = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  network_interface_ids = 
    azurerm_network_interface.int.id
  

 os_disk {
    name                 = var.os_disk.name
    caching              = var.os_disk.caching
    storage_account_type = var.os_disk.storage_account_type
    disk_size_gb         = var.os_disk.disk_size_gb
  }

 source_image_reference {
    publisher = var.source_image_reference.publisher
    offer     = var.source_image_reference.offer
    sku       = var.source_image_reference.sku
    version   = var.source_image_reference.version
  }
}
