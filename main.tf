terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.25.0"
    }
  }
}

module "dev" {
  source          = "./modules/dev"
  location        = var.location
  clientSecret    = var.clientSecret
  clientId        = var.clientId
  tenantId        = var.tenantId
  subscriptionId  = var.subscriptionId
  RGName          = var.RGName
}