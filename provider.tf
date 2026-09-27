terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
    required_version = ">= 1.5.0"   
}

provider "azurerm" {
  features {}
  subscription_id = "eef15684-064b-4dad-bdb8-195c883f112a"
}