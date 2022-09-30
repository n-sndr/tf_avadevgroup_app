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
  client_secret = var.clientSecret
}

resource "azurerm_resource_group" "rg" {
  name     = var.RGName
  location = var.location
}
