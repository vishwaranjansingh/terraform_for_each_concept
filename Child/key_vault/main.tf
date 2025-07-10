resource "azurerm_key_vault" "vault" {
    for_each = var.key_vault
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  tenant_id = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  sku_name = each.value.sku_name
}

data "azurerm_client_config" "current" {
}
data "azurerm_key_vault" "existing" {
    for_each = var.key_vault
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

