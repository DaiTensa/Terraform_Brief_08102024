resource "azurerm_storage_account" "asc" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_acces_tier
  account_replication_type = var.account_replication
}