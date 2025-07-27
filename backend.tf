terraform {
  backend "azurerm" {
    resource_group_name = "jenkins"
    storage_account_name = "terraform999"
    container_name = "terraform999"
    key = "terraform.tfstate"
  }
}