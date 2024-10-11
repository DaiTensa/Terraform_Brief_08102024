# Terraform Configuration for Azure Linux Virtual Machine

Terraform code used to create an Azure Linux Virtual Machine (VM). 
The configuration utilizes the `azurerm_linux_virtual_machine` resource.

## Resource Block Definition

The following Terraform code defines a resource block for creating an Azure Linux Virtual Machine:

```hcl
resource "azurerm_linux_virtual_machine" "example" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_B1s"
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  network_interface_ids = [format(
    "/subscriptions/%s/resourceGroups/%s/providers/Microsoft.Network/networkInterfaces/%s",
    var.subscription_id,
    var.resource_group_name,
    var.network_interface_name
  )]

  disable_password_authentication = false

  os_disk {
    caching                = "ReadWrite"
    storage_account_type   = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
```