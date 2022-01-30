terraform {
  backend "azurerm" {
    subscription_id = "785f9183-24d6-48f8-96b1-17a654db8775"
    resource_group_name  = "Free Trial"
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
