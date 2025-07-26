terraform {
  backend "azurerm" {
    resource_group_name = "jenkins"
    storage_account_name = var.storage_account_name
    container_name = var.container_name
    key = "terraform.tfstate"
  }
}