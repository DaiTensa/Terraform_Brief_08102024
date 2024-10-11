# Definition of an Azure Linux Web App resource
resource "azurerm_linux_web_app" "example" {
  
  # The name of the web app
  name                = var.webb_app_name
  
  # The resource group where the web app will be deployed
  resource_group_name = var.resource_group_name
  
  # The Azure location where the web app will be deployed
  location            = var.location
  
  # The ID of the App Service Plan that defines the pricing and scaling options for the web app
  # This is passed as a variable and is usually fetched using a data source for existing service plans
  service_plan_id     = var.service_plan_id

  # Configuration of the web app's site settings (currently empty, but can be used to define app-specific settings)
  site_config {
    # Additional configuration settings can be added here (e.g., PHP version, Python version, etc.)
    # Example: 
    # linux_fx_version = "PYTHON|3.8" # For setting the runtime version
  }
}
