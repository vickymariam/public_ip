resource "azurerm_public_ip" "this" {
  name                    = var.public_ip_name
  resource_group_name     = var.resource_group_name
  location                = var.location
  allocation_method       = var.allocation_method
  zones                   = var.zones
  reverse_fqdn            = var.reverse_fqdn
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  edge_zone               = var.edge_zone
  domain_name_label       = var.domain_name_label
  sku                     = var.pip_sku
  sku_tier                = var.sku_tier
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id

  lifecycle {
    create_before_destroy = true
  }
}