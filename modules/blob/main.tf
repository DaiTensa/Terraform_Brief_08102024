# Define an Azure Storage Container
resource "azurerm_storage_container" "sc" {

  # Name of the storage container
  name                  = var.storage_container_name
  # Name of the associated storage account
  storage_account_name  = var.storage_account_name
   # Access level of the container (private, blob, container)
  container_access_type = var.container_access_type
}