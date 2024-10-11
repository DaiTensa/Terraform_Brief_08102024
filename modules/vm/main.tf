# Define a resource block for creating an Azure Linux VM
resource "azurerm_linux_virtual_machine" "example" {
  
  # Set the name of the VM
  name                = var.vm_name
  
  # Specify the resource group where the VM will be created
  resource_group_name = var.resource_group_name
  
  # Define the location (Azure region) for the VM
  location            = var.location
  
  # Set the size of the VM (Standard SKU)
  size                = "Standard_B1s"
  
  # Define the administrator username for the VM
  admin_username      = var.admin_username
  
  # Set the administrator password for the VM
  admin_password      = var.admin_password

  # Define the network interface for the VM using its resource ID
  network_interface_ids = [format(
    "/subscriptions/%s/resourceGroups/%s/providers/Microsoft.Network/networkInterfaces/%s",
    var.subscription_id,        # Subscription ID
    var.resource_group_name,    # Resource group name
    var.network_interface_name   # Network interface name
  )]

  # Enable password authentication for the VM
  disable_password_authentication = false

  # Configure the operating system disk settings
  os_disk {
    caching                = "ReadWrite"        # Set disk caching option
    storage_account_type   = "Standard_LRS"     # Define storage type for the OS disk
  }

  # Specify the source image for the VM
  source_image_reference {
    publisher = "Canonical"   # Image publisher
    offer     = "UbuntuServer" # Image offer
    sku       = "18.04-LTS"    # SKU version of the image
    version   = "latest"       # Use the latest version of the image
  }
}
