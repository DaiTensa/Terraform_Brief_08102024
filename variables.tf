# Define a variable for the resource group name
variable "resource_group_name" {
  # Description of the variable's purpose
  description = "The name of the resources group"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the Azure region where resources will be deployed
variable "location" {
  # Description of the variable's purpose
  description = "The Azure region to deploy resources"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the virtual machine name
variable "vm_name" {
  # Description of the variable's purpose
  description = "Virtual machine name"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the administrator username
variable "admin_username" {
  # Description of the variable's purpose
  description = "Admin user name"
  
  # The type is implicitly set to string as no type is specified
}

# Define a variable for the administrator password
variable "admin_password" {
  # Description of the variable's purpose
  description = "Admin password"
  
  # The type is implicitly set to string as no type is specified
}

# Define a variable for the Azure subscription ID
variable "subscription_id" {
  # Description of the variable's purpose
  description = "Subscription ID"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the network interface name
variable "network_interface_name" {
  # Description of the variable's purpose
  description = "Network Interface name created by Seng"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the App Service Plan name
variable "app_service_plane" {
  # Description of the variable's purpose
  description = "The Name of your app service plan created by Seng"
  
  # The type is implicitly set to string as no type is specified
}

# Define a variable for the web app name
variable "webb_app_name" {
  # Description of the variable's purpose
  description = "Web App Name"
  
  # Specify the type of the variable as a string
  type        = string
}
