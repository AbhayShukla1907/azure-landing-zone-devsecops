resource "azurerm_virtual_network" "vnet" {
  for_each            = var.v-nets
  name                = each.value.v-net_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
}
