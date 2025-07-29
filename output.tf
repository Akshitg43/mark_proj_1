output "vm_public_ip" {
  value = module.pip.public_ip_address
  description = "Public IP address of the VM"
}