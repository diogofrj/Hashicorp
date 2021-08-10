# Create Workspace
resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace
  location            = var.region
  resource_group_name = var.rgname
  friendly_name       = var.workspacefriendlyname
  description         = var.workspacedesc
}

# Associate RemoteApp Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspaceremoteapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.pooledremoteapp.id
}

# Associate Desktop Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktop" {
  workspace_id         = azurerm_virtual_desktop_workspace.workspace.id
  application_group_id = azurerm_virtual_desktop_application_group.pooleddesktopapp.id
}