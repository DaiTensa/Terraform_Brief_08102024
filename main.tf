# Define a module for creating a Blob Storage
module "blob" {
  # Specify the source path of the module
  source = "./modules/blob"
  
  # Pass the storage account name from the storage module
  storage_account_name = module.storage.storage_account_name
}

# Define a module for creating a Storage Account
module "storage" {
  # Specify the source path of the module
  source = "./modules/storage"
  
  # Pass the resource group name and location as variables
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Define a module for creating a Virtual Machine (VM)
module "vm" {
  # Specify the source path of the module
  source = "./modules/vm"

  # Pass necessary variables for VM configuration
  subscription_id          = var.subscription_id
  network_interface_name    = var.network_interface_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  vm_name                   = var.vm_name
  admin_username            = var.admin_username
  admin_password            = var.admin_password
}

# Data block to fetch an existing Azure App Service Plan
data "azurerm_service_plan" "appserviceplan" {
  # Name of the App Service Plan to retrieve
  name                = var.app_service_plane
  
  # Resource group name where the App Service Plan is located
  resource_group_name = var.resource_group_name
}

# Define a module for creating a Web App
module "webapp" {
  # Specify the source path of the module
  source = "./modules/webapp"
  
  # Pass necessary variables for the web app configuration
  app_service_plane     = var.app_service_plane
  webb_app_name         = var.webb_app_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  
  # Pass the Service Plan ID retrieved from the data block
  service_plan_id       = data.azurerm_service_plan.appserviceplan.id
}
