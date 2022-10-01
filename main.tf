module "dev" {
  source          = "./modules/dev"
  location        = var.location
  clientSecret    = var.clientSecret
  clientId        = var.clientId
  tenantId        = var.tenantId
  subscriptionId  = var.subscriptionId
  RGName          = var.RGName
}