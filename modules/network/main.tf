

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  address_space       = var.virtual_network_address_prefix
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet_name_address_prefix

#   delegation {
#     name = "delegation"

#     service_delegation {
#       name    = "Microsoft.ContainerInstance/containerGroups"
#       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
#     }
#   }
}

resource "azurerm_network_security_group" "example" {
  name                = var.azurerm_network_security_group_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

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
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Dynamic"
  domain_name_label   = "matetask${random_integer.ri.result}"

#   tags = {
#     environment = "Production"
#   }
}

