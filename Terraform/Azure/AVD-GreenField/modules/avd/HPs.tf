
# Create "Pooled" AVD Host Pool
resource "azurerm_virtual_desktop_host_pool" "pooleddepthfirst" {
  location                 = var.region
  resource_group_name      = var.rgname
  name                     = var.pooledhpname
  friendly_name            = var.pooledhpfriendlyname
  description              = var.pooledhpdescription
  type                     = "Pooled"
  maximum_sessions_allowed = var.pooledhpmaxsessions
  load_balancer_type       = "DepthFirst"
}
