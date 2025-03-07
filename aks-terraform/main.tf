provider "azurerm" {
  features {}

  subscription_id = "ea2c7698-2a1b-4222-a1ea-14426313606d"
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "myAKSResourceGroup"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "myaks"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
