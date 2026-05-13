terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_blob" "example" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = module.storage.storage_account_name
  storage_container_name = module.storage.storage_container_name
  type                   = "Block"
  source                 = "some-local-file.zip"
}


module "network" {
  source = "./modules/network"

  subnet_address_prefix       = var.subnet_address_prefix
  dns_label                   = var.dns_label
  public_ip_address_name      = var.public_ip_address_name
  virtual_network_name        = var.virtual_network_name
  subnet_name                 = var.subnet_name
  network_security_group_name = var.network_security_group_name
  vnet_address_prefix         = var.vnet_address_prefix
  resource_group_name         = var.resource_group_name
  location                    = var.location
}

module "compute" {
  source = "./modules/compute"

  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  ssh_key_public      = var.ssh_key_public
  resource_group_name = var.resource_group_name

  subnet_id = module.network.subnet_id
  public_ip = module.network.public_ip
}

module "storage" {
  source = "./modules/storage"

  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_id  = azurerm_storage_account.example.id
  subnet_id           = azurerm_subnet.example.id

}
