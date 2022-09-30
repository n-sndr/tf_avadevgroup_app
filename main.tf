provider "azurerm" {
  version = "<=3.25.0"

  subscription_id = var.subscriptionId
  tenant_id = var.tenantId
  client_id = var.clientId
  client_secret = var.clientSecret
}

resource "azurerm_resourceGroupName" "dev" {
    name = var.RGName
    location = var.location
}