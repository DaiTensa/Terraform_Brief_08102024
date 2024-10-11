# Define an output variable named "storage_account_name"
output "storage_account_name" {
  value = azurerm_storage_account.asc.name
  description = "The name of the storage account"
}