# Define a resource block for creating an Azure Storage Account
resource "azurerm_storage_account" "asc" {

  # Set the name of the storage account using a variable
  name                     = var.storage_account_name

  # Specify the resource group where the storage account will be created
  resource_group_name      = var.resource_group_name

  # Define the location (region) for the storage account
  location                 = var.location

  # Set the tier for the storage account (e.g., Standard or Premium)
  account_tier             = var.account_acces_tier

   # Specify the replication strategy for the storage account (LRS, GRS)
  account_replication_type = var.account_replication
}