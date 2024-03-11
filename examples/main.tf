# module "<module_name>" {
#   source  = "app.terraform.io/perizer/module_name/azurerm"
#   version = "0.1.0"
# }

resource "azurerm_resource_group" "main" {
  name     = "demo-rg-vic"
  location = "eastus2"
}

module "public_ip" {
  source              = "../"
  public_ip_name            = "pip-demo-vic"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  allocation_method   = "Dynamic"
  pip_sku             = "Basic"

}
