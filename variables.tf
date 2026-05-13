variable "resource_group_name" {
  type    = string
  default = "mate-azure-task-12"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "vnet_address_prefix" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  type    = string
  default = "default"
}

variable "subnet_address_prefix" {
  type    = string
  default = "subnet_address_prefix"
}

variable "network_security_group_name" {
  type    = string
  default = "defaultnsg"
}

variable "public_ip_address_name" {
  type    = string
  default = "linuxboxpip"
}

variable "vm_name" {
  type    = string
  default = "matebox"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "ssh_key_public" {
  type    = string
  default = "your-public-key-content"
}

variable "dns_label" {
  type    = string
  default = "matetask"
}

variable "virtual_network_name" {
  type    = string
  default = "vnet"
}

