# Backend Configuration File
terraform {
    required_version = ">=1.2.0"
    backend "azurerm" {
        #tenant_id            = "f4a1e29e-05f7-4745-a47b-8910478562d0"
        #subscription_id      = "42ced274-51ca-411e-8973-78df7811f3ad"
        resource_group_name  = "pgsicp-rg"
        storage_account_name = "pgsicpsa"
        container_name       = "container-tfstates"
        key                  = "infra/infra-kv-gh/tfstate"
        #use_azuread_auth     = true 
    }
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~>3.9.0"
        }
        azuread = {
            source  = "hashicorp/azuread"
            version = "~>2.22"
        }
        random={
            source= "hashicorp/random"
            version = "=3.1.0"
        }
    }
}
provider "azurerm" {
    features {}
}