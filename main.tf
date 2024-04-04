terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }
}

resource "azurerm_redis_cache" "cache" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.context.azure.resourceGroup.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
}
