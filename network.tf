resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-workshop"
  location = var.location
}

module "network" {
  source  = "app.terraform.io/wahid-azure/network/azurerm"
  version = "3.5.0"
  resource_group_name = azurerm_resource_group.example.name
}
