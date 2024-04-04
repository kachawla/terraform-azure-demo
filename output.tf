output "result" {
  value = {
    resources = [azurerm_redis_cache.cache.id]
    values = {
      host = azurerm_redis_cache.cache.hostname
      port = azurerm_redis_cache.cache.ssl_port
    }
    secrets = {
      password = azurerm_redis_cache.cache.primary_access_key
    }
  }
  sensitive = true
}
