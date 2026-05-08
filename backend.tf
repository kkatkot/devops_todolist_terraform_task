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