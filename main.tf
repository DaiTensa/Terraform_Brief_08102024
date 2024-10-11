module "blob" {
  source = "./modules/blob"
}

module "storage" {
  source = "./modules/storage"
  resource_group_name = var.resource_group_name
  location = var.location
}


module "vm" {
  source = "./modules/vm"

  subscription_id = var.subscription_id
  network_interface_name = var.network_interface_name
  resource_group_name = var.resource_group_name
  
  location = var.location
  vm_name = var.vm_name
  admin_username = var.admin_username
  admin_password = var.admin_password
}

data "azurerm_service_plan" "appserviceplan" {
  name                = var.app_service_plane  # Nom du plan de service
  resource_group_name = var.resource_group_name # Nom du groupe de ressources
}

module "webapp" {
  source = "./modules/webapp"
  app_service_plane = var.app_service_plane
  webb_app_name = var.webb_app_name
  resource_group_name = var.resource_group_name
  location = var.location
  service_plan_id = data.azurerm_service_plan.appserviceplan.id
  
}