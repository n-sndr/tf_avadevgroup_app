terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.25.0"
    }
  }
  #cloud {
  #  organization = "avadevgroup"
  #  workspaces {
  #    name = "tf_avadevgroup_app_nonprd"
  #  }
  # }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionId
  tenant_id = var.tenantId
  client_id = var.clientId
  client_secret = var.clientSecret
}

resource "azurerm_resource_group" "dev" {
  name     = var.RGName
  location = var.location
}

resource "azurerm_app_service_plan" "dev" {
  name                = "ava-dev-group-asp"
  location            = var.location
  resource_group_name = var.RGName
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_app_service" "dev" {
  name                = "ava-dev-group-site"
  location            = var.location
  resource_group_name = var.RGName
  app_service_plan_id = azurerm_app_service_plan.dev.id
}
