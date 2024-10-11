# Define a variable for the service plan ID
variable "service_plan_id" {
  # Description of the variable's purpose
  description = "Service Plan Id"
  
  # Specify the type of the variable as a string
  type        = string
}

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

# Define a variable for the web app name
variable "webb_app_name" {
  # Description of the variable's purpose
  description = "Web App Name"
  
  # Specify the type of the variable as a string
  type        = string
}

# Define a variable for the App Service Plan name
variable "app_service_plane" {
  # Description of the variable's purpose
  description = "The Name of your app service plan created by Seng"
  
  # Specify the type of the variable as a string
  type        = string
}
