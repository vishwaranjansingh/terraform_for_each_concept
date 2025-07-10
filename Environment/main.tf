module "Resource_details" {
source = "../Child/Resoouce_group"
resource_group = var.resource_group
}
module "storage_details" {
    depends_on = [ var.resource_group ]
source = "../Child/Storage_account"
storage_account = var.storage_account 
}
module "container_details" {
    depends_on = [ module.storage_details ]
    source = "../Child/Container"
    container = var.container
}