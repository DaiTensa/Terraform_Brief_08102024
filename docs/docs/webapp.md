# Terraform Configuration for Azure Linux Web App

Terraform code used to create an Azure Linux Web App. 
The configuration utilizes the `azurerm_linux_web_app` resource.

## Resource Block Definition

The following Terraform code defines a resource block for creating an Azure Linux Web App:

```hcl
resource "azurerm_linux_web_app" "example" {
  name                = var.webb_app_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {}
}
```
