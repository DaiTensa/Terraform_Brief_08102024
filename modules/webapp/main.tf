# Define a resource block for creating an Azure Linux Web App
resource "azurerm_linux_web_app" "example" {
  # Set the name of the web app using a variable
  name                = var.webb_app_name
  
  # Specify the resource group where the web app will be created
  resource_group_name = var.resource_group_name
  
  # Define the location (Azure region) for the web app
  location            = var.location
  
  # Reference the service plan ID under which the web app will operate
  service_plan_id     = var.service_plan_id

  # Configuration block for the site settings of the web app
  site_config {}
}
