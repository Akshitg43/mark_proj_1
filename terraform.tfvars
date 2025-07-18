location = "eastus"
resource_group_name = "vm"
vnet_address_space = ["10.0.0.0/16"]
subnet_name = "subnet1"
subnet_address_prefixes = ["10.0.1.0/24"]
vnet_name = "vnet"
vm_name           = "test-vm"
vm_size           = "Standard_B2ms"
admin_username    = "azureuser"
admin_password    = "P@ssw0rd1234!"
os_disk_size_gb   = 128

os_disk = {
  name                 = "akshit-vm-osdisk"
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  disk_size_gb         = 128
}

source_image_reference = {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-jammy"
  sku       = "22_04-lts-gen2"
  version   = "latest"
}