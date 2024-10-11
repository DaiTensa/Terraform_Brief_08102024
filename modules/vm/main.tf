# Definition of an Azure Linux Virtual Machine resource
resource "azurerm_linux_virtual_machine" "example" {
  
  # Name of the virtual machine
  name                = var.vm_name
  
  # Name of the resource group where the VM will be created
  resource_group_name = var.resource_group_name
  
  # Azure region where the VM will be deployed
  location            = var.location
  
  # The size (SKU) of the virtual machine, indicating CPU, memory, etc.
  # Example: "Standard_B1s" is a low-cost, basic VM size
  size                = "Standard_B1s"
  
  # The admin username for logging into the virtual machine
  admin_username      = var.admin_username
  
  # The admin password for logging into the virtual machine
  admin_password      = var.admin_password

  # The network interface associated with this VM, defined using the subscription ID,
  # resource group name, and network interface name, all passed as variables
  network_interface_ids = [format(
    "/subscriptions/%s/resourceGroups/%s/providers/Microsoft.Network/networkInterfaces/%s",
    var.subscription_id,
    var.resource_group_name,
    var.network_interface_name
  )] 

  # Enable password-based authentication (set to false to disable passwords if using SSH keys)
  disable_password_authentication = false

  # Configuration for the OS disk (the primary disk that will hold the operating system)
  os_disk {
    # Read/write caching enabled on the OS disk for performance
    caching                = "ReadWrite"
    
    # Type of storage used for the OS disk; "Standard_LRS" is a cost-effective local redundant storage
    storage_account_type   = "Standard_LRS"
  }

  # Reference to the image used for the virtual machine
  source_image_reference {
    # Publisher of the image (in this case, Canonical, the company behind Ubuntu)
    publisher = "Canonical"
    
    # Offer is the product line or version; in this case, it's UbuntuServer
    offer     = "UbuntuServer"
    
    # SKU refers to a specific version of the image; here it’s "18.04-LTS" for the long-term support version of Ubuntu
    sku       = "18.04-LTS"
    
    # Version of the image; "latest" ensures the VM uses the most recent version available
    version   = "latest"
  }
}
