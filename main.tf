
resource "azurerm_resource_group" "rg" {
  name     = "satish-rg"
  location = "East US"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "satish-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "aks-snet-us"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/26"]

}