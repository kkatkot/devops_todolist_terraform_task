

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  address_space       = var.vnet_address_prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet_address_prefix

  #   delegation {
  #     name = "delegation"

  #     service_delegation {
  #       name    = "Microsoft.ContainerInstance/containerGroups"
  #       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
  #     }
  #   }
}

resource "azurerm_network_security_group" "example" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  #   tags = {
  #     environment = "Production"
  #   }
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_public_ip" "example" {
  name                = var.public_ip_address_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Dynamic"
  domain_name_label   = "matetask${random_integer.ri.result}"

  #   tags = {
  #     environment = "Production"
  #   }
}

