resource "azurerm_linux_web_app" "example" {
  name                = var.webb_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {}
}