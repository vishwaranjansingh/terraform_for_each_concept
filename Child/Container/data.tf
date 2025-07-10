data "azurerm_storage_account" "st" {
      for_each = var.container
  name = each.value.storage_account
  resource_group_name = each.value.resource_group_name
}