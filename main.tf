provider "azurerm" {
    version         = "~>1.30.0"
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
}

# Create resource group.
resource "azurerm_resource_group" "test" {
    name            = var.resourceName
    location        = var.region

    # Add tags.
    tags            = var.tags
}

# Create container registry
resource "azurerm_container_registry" "test" {
  name                     = var.containerName
  resource_group_name      = azurerm_resource_group.test.name
  location                 = var.region
  sku                      = "Basic"
  admin_enabled            = true
}

# Create kubernetes cluster
resource "azurerm_kubernetes_cluster" "test" {
  name                = var.aksName
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  dns_prefix          = "${var.aksName}-dns"

  agent_pool_profile {
    name       = var.nodePoolName
    vm_size    = "Standard_D2_v2"
    count      = 1
  }

  service_principal {
    client_id     = var.cID
    client_secret = var.sID
  }
}
