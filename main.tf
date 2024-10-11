# Module for managing Azure Blob Storage container
module "blob" {
  # Source location of the blob module
  source = "./modules/blob"
  
  # Pass the storage account name from the storage module output to the blob module
  storage_account_name = module.storage.storage_account_name
}

# Module for managing the Azure Storage Account
module "storage" {
  # Source location of the storage module
  source = "./modules/storage"
  
  # Resource group where the storage account will be created
  resource_group_name = var.resource_group_name
  
  # Location (Azure region) where the storage account will be created
  location = var.location
}

# Module for creating an Azure Virtual Machine
module "vm" {
  # Source location of the VM module
  source = "./modules/vm"
  
  # Azure subscription ID to create the virtual machine in the correct subscription
  subscription_id = var.subscription_id
  
  # The name of the network interface associated with the VM
  network_interface_name = var.network_interface_name
  
  # The resource group where the virtual machine and associated resources will be created
  resource_group_name = var.resource_group_name
  
  # Azure region for the VM deployment
  location = var.location
  
  # Name of the virtual machine
  vm_name = var.vm_name
  
  # Admin username for accessing the virtual machine
  admin_username = var.admin_username
  
  # Admin password for accessing the virtual machine
  admin_password = var.admin_password
}

# Data source for fetching an existing Azure App Service Plan
data "azurerm_service_plan" "appserviceplan" {
  # The name of the existing app service plan to be fetched
  name = var.app_service_plane
  
  # The resource group where the app service plan is located
  resource_group_name = var.resource_group_name
}

# Module for deploying an Azure Web App
module "webapp" {
  # Source location of the web app module
  source = "./modules/webapp"
  
  # The name of the existing App Service Plan
  app_service_plane = var.app_service_plane
  
  # The name of the web app
  webb_app_name = var.webb_app_name
  
  # The resource group where the web app will be created
  resource_group_name = var.resource_group_name
  
  # The Azure region where the web app will be deployed
  location = var.location
  
  # The ID of the service plan (fetched from the data source), required to associate the web app with the plan
  service_plan_id = data.azurerm_service_plan.appserviceplan.id
}
