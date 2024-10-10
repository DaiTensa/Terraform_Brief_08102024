# Resource grouepe name
variable "resource_groupe_name" {
  type = string
  default = "de_p1_resource_group"
  description = "Resource groupe name"
}

# Storage account name
variable "storage_account_name" {
    type = string
    default = "daistorageaccount" 
    description = "Storage account name"
}

# Location zone
variable "location_zone" {
  type = string
  default = "North Europe"
  description = "The location zone"
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
