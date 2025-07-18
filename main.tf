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