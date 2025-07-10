variable "resource_group" {
  type = map(any)
}
variable "storage_account" {
  type = map(any) 
}
variable "container" {
    type = map(any)
}
variable "virtual_network" {
  type = map(any)
}
variable "subnet" {
  type = map(any)
}
variable "public_ip" {
  type = map(any)
}
variable "key_vault" {
  type = map(any)
}
variable "key_secrets" {
  type = map(any)
}
variable "tenant_id" {
  type = string
}