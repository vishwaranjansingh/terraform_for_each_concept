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
module "virtul_network_details" {
    depends_on = [ var.resource_group ]
  source = "../Child/Virtual_network"
  virtual_network = var.virtual_network
}
module "subnet_details" {
    depends_on = [module.virtul_network_details]
  source = "../Child/Sub_network"
  subnet = var.subnet
}
module "public_details" {
    depends_on = [ module.Resource_details ]
  source = "../Child/Public_IP"
  public_ip = var.public_ip
}
module "key_vault" {
    depends_on = [ module.Resource_details ]
  source = "../Child/key_vault"
  key_vault = var.key_vault
  key_secrets = var.key_secrets
   tenant_id = var.tenant_id
  
}
module "key_secrets_details" {
    depends_on = [ var.key_vault ]
  source = "../Child/key_secrets"
  key_secrets = var.key_secrets
}