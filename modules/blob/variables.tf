# Storage container & Blob storage variables
variable "storage_container_name" {
    type = string
    default = "daicontainerstoragelast"
    description = "Container storage name" 
}

# Storage account name
variable "storage_account_name" {
    type = string
    default = "daistorageaccountlast" 
    description = "Storage account name"
}

# Container access type
variable "container_access_type" {
  type = string
  default = "private"
  description = "Container access type"
}