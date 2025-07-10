resource "azurerm_key_vault_secret" "keys" {
    for_each = var.key_secrets
  name = each.value.name
  value = each.value.value
  key_vault_id = data.azurerm_client_config.current.tenant_id
}

data "azurerm_key_vault" "name" {
  for_each = {
    for k, v in var.key_secrets :
    v.key_vault => {
      name                = v.key_vault
      resource_group_name = v.resource_group_name
    }
  }

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}