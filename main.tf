# terraform {
#   required_version = ">= 1.1.0"
#   cloud {
#     organization = "avadevgroup"
#     workspaces {
#       name = "tf_avadevgroup_app_nonprd"
#     }
#   }
# }
module "dev" {
  source          = "./modules/dev"
  location        = var.location
  clientSecret    = var.clientSecret
  clientId        = var.clientId
  tenantId        = var.tenantId
  subscriptionId  = var.subscriptionId
  RGName          = var.RGName
}