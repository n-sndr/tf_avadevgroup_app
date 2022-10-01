# provider "azurerm" {
#   features {}
  
# }

resource "azurerm_resource_group" "dev" {
  name     = var.RGName
  location = var.location
}

resource "azurerm_service_plan" "dev" {
  name                = "ava-dev-group-asp"
  resource_group_name = module.azurerm_resource_group.dev.name
  location            = module.azurerm_resource_group.dev.location
  os_type             = "Windows"
  sku_name            = "D1"
}

resource "azurerm_windows_web_app" "dev" {
  name                = "ava-dev-group-web001"
  resource_group_name = module.azurerm_resource_group.dev.name
  location            = module.azurerm_service_plan.dev.location
  service_plan_id     = module.azurerm_service_plan.dev.id

  site_config {
    always_on         = false 
  }
}