terraform {
  backend "azurerm" {
    resource_group_name  = "ResourceGroup1lod21355429"
    storage_account_name = "terraformdevopsaz"
    container_name       = "tfstatefile"
  
  }
}

module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
