# Storage container & Blob storage variables

# Defines the name of the Azure Storage Container.
# Default value is "daicontainer2024"
variable "storage_container_name" {
    type = string
    default = "daicontainer2024"
    description = "Container storage name" 
}

# Defines the name of the Azure Storage Account.
# Default value is "daistorageaccountlast2024"
variable "storage_account_name" {
    type = string
    default = "storageaccountdai3" 
    description = "Storage account name"
}

# Defines the access level for the container, which could be "private", "blob", or "container".
# Default value is "private"
variable "container_access_type" {
  type = string
  default = "private"
  description = "Container access type"
}