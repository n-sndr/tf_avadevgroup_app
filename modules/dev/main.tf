terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.25.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionId
  tenant_id = var.tenantId
  client_id = var.clientId
  client_secret =  var.clientSecret
}

resource "azurerm_resource_group" "dev" {
  name     = var.RGName
  location = var.location
}

resource "azurerm_service_plan" "dev" {
  name                = "ava-dev-group-asp"
  resource_group_name = azurerm_resource_group.dev.name
  location            = azurerm_resource_group.dev.location
  os_type             = "Windows"
  sku_name            = "D1"
}

resource "azurerm_windows_web_app" "dev" {
  name                = "ava-dev-group-web001"
  resource_group_name = azurerm_resource_group.dev.name
  location            = azurerm_service_plan.dev.location
  service_plan_id     = azurerm_service_plan.dev.id

  site_config {
    always_on         = false 
  }
}