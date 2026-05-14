output "subnet_id" {
  value = azurerm_subnet.example.id
}

output "public_ip" {
  value = azurerm_public_ip.example.ip_address
}