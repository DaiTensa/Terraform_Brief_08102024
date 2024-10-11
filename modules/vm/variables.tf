variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
}

variable "admin_username" {
  description = "Admin user name"
}

variable "admin_password" {
  description = "Admin password"
}

variable "subscription_id" {
    description = "Subscription ID"
    type        = string
}

variable "network_interface_name" {
    description = "Subscription ID"
    type        = string
}
