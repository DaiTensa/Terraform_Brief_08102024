# Define a variable for the resource group name
variable "resource_group_name" {
  # Description of the variable's purpose
  description = "The name of the resource group"
  
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
  description = "Network interface name"  # Corrected description for clarity
  
  # Specify the type of the variable as a string
  type        = string
}
