# Example taken from https://github.com/hashicorp/terraform-provider-azurerm/blob/main/examples/redis-cache/basic/main.tf
# NOTE: the Name used for Redis needs to be globally unique
resource "azurerm_redis_cache" "example" {
  name                = "pgsicp-infra-redis-gh"
  location            = var.location
  resource_group_name = var.rgName
  capacity            = 0
  family              = "C"
  sku_name            = "Basic"
  enable_non_ssl_port = true
}