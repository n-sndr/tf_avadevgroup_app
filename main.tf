terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.25.0"
    }
  }  
  cloud {
    organization = "avadevgroup"
    workspaces {
      name = "tf_avadevgroup_app_nonprd"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionId
  tenant_id = var.tenantId
  client_id = var.clientId
}

module "dev" {
  source = "./modules/dev"
  location = var.location
}