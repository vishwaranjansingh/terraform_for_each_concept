resource "azurerm_storage_account" "st" {
  for_each = var.storage_account
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  account_replication_type = each.value.account_replication_type
account_tier = each.value.account_tier
  
}
