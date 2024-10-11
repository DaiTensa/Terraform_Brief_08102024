# Definition of an Azure Storage Account resource
resource "azurerm_storage_account" "asc" {
  # The name of the storage account
  name                     = var.storage_account_name
  
  # The resource group where the storage account will be created
  resource_group_name      = var.resource_group_name
  
  # The Azure region where the storage account will be located
  location                 = var.location
  
  # The performance tier for the storage account (Standard, Premium, etc)
  account_tier             = var.account_acces_tier
  
  # The replication strategy for the storage account (LRS, GRS, etc)
  account_replication_type = var.account_replication
}
