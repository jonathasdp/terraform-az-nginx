terraform {
  required_version = ">=1.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.5"
    }
  }
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "rg-atividade" {
  name     = "rg-atividade"
  location = "West US"

  tags = {
    faculdade = "Impacta"
  }
}
