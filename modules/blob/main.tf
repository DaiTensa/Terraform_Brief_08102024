# Declaration of an Azure storage container resource
resource "azurerm_storage_container" "sc" {
  # Name of the storage container
  name                  = var.storage_container_name
  
  # Name of the storage account in which the container will be created
  storage_account_name  = var.storage_account_name
  
  # Access type for the container (private, public, etc.)
  container_access_type = var.container_access_type
}
