variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

resource "azurerm_resource_group" "RG" {
  name     = "Azure_Tf_Resource-_Group"
  location = "East US"
  tags = {
    client = "Sirin"
  }
}

 provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  # Connection to Azure
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}
