# Define the required Terraform providers
terraform {
  required_providers {
    # Specify the Azure Resource Manager provider
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

# Configure the Azure Resource Manager provider
provider "azurerm" {
  # Configuration options
  features {

    # Configuration for virtual machine settings
    virtual_machine {
      detach_implicit_data_disk_on_deletion = false
      delete_os_disk_on_deletion            = true
      graceful_shutdown                     = false
      skip_shutdown_and_force_delete        = false
    }

  }

  # Specify the Azure subscription ID to use for resource management
  subscription_id = var.subscription_id
  
}