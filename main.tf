provider "azurerm" {
  version = "<=2.90.0"

  subscription_id = var.subscriptionId
  tenant_id = var.tenantId
  client_id = var.clientId
  client_secret = var.clientSecret
}

resource "azurerm_resourceGroupName" "dev" {
    name = var.RGName
    location = var.location
}
