variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

# Storage account name
variable "storage_account_name" {
    type = string
    default = "storageaccountdai3" 
    description = "Storage account name"
}

# Account acces tier
variable "account_acces_tier" {
  type = string
  default = "Standard"
  description = "Account acces tier"
}

# Account replication type
variable "account_replication" {
  type = string
  default = "GRS"
  description = "Account replication mode"
}
