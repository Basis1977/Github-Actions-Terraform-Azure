terraform {
  backend "azurerm" {
    resource_group_name  = "githubtest"
    storage_account_name = "azstore16789"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
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
