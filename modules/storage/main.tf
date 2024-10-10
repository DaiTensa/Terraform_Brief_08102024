resource "azurerm_storage_account" "asc" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_groupe_name
  location                 = var.location_zone
  account_tier             = var.account_acces_tier
  account_replication_type = var.account_replication
}