#Create RemoteApp Application Group
resource "azurerm_virtual_desktop_application_group" "pooledremoteapp" {
  name                = var.pooledhpremoteappname
  location            = var.region
  resource_group_name = var.rgname
  type                = "RemoteApp"
  host_pool_id        = azurerm_virtual_desktop_host_pool.pooleddepthfirst.id
  friendly_name       = var.pooledhpremoteappfriendlyname
  description         = var.pooledhpremoteappdescription
}

/*
resource "azurerm_virtual_desktop_application" "chrome" {
  name                         = "GoogleChrome"
  application_group_id         = azurerm_virtual_desktop_application_group.remoteapp.id
  friendly_name                = "Google Chrome"
  description                  = "Chromium based web browser"
  path                         = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
  command_line_argument_policy = "DoNotAllow"
  command_line_arguments       = "--incognito"
  show_in_portal               = false
  icon_path                    = "C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe"
  icon_index                   = 0
}

resource "azurerm_virtual_desktop_application" "excel" {
  name                         = "Excel"
  application_group_id         = azurerm_virtual_desktop_application_group.remoteapp.id
  friendly_name                = "Microsoft Excel"
  description                  = "Microsoft Excel"
  path                         = "C:\\Program Files\\Microsoft Office\\root\\Office16\\EXCEL.EXE"
  command_line_argument_policy = "DoNotAllow"
  command_line_arguments       = "--incognito"
  show_in_portal               = false
  icon_path                    = "C:\\Program Files\\Microsoft Office\\Root\\VFS\\Windows\\Installer\\{90160000-000F-0000-1000-0000000FF1CE}\\xlicons.exe"
  icon_index                   = 0
}

*/