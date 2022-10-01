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

module "webportal-dev" {
  source = "./modules/dev"
}