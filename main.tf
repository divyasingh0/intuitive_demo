# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    owner = "divya.chauhan@intuitive.ai"
    email = "divya.chauhan@intuitive.ai"
    name  = "terraform-demo"
  }
}

# Storage Account
resource "azurerm_storage_account" "storage" {
  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  account_kind = "StorageV2"

  min_tls_version            = "TLS1_2"
  https_traffic_only_enabled = true

  allow_nested_items_to_be_public = false
  tags = {
    owner = "divya.chauhan@intuitive.ai"
    email = "divya.chauhan@intuitive.ai"
    name  = "terraform-demo"
  }
}