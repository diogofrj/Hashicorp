#Create Desktop Application Group
resource "azurerm_virtual_desktop_application_group" "pooleddesktopapp" {
  name                = var.pooledhpdesktopappname
  location            = var.region
  resource_group_name = var.rgname
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.pooleddepthfirst.id
  friendly_name       = var.pooledhpdesktopappfriendlyname
  description         = var.pooledhpdesktopappdescription
}
