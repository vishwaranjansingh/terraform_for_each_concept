resource "azurerm_storage_container" "cn" {
    for_each = var.container
    name = each.value.name
    container_access_type = each.value.container_access_type
    storage_account_id= data.azurerm_storage_account.st[each.key].id
    # storage_account_name = each.value.storage_account_name
   
  
}

