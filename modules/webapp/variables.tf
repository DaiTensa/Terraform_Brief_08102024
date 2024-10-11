variable "service_plan_id" {
    description = "Service Plan Id"
    type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "webb_app_name" {
    description = "Web App Name"
    type = string
}

variable "app_service_plane" {
  description = "The Name of ou app service plan created by Seng"
  type = string
}