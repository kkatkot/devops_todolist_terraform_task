variable virtual_network_name {
    type = string
    default = "vnet"
}

variable virtual_network_address_prefix {
    type = list(string)
    default = ["10.0.0.0/16"]
}

variable subnet_name {
    type = string
    default = "default"
}

variable subnet_name_address_prefix {
    type = list(string)
    default = ["10.0.0.0/24"]
}

variable azurerm_network_security_group_name {
    type = string
    default = "defaultnsg"
}

variable public_ip_address_name {
    type = string
    default = "linuxboxpip"
}