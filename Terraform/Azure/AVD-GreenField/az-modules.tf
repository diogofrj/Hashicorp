
# Create resource group
resource "azurerm_resource_group" "default" {
name     = "VFF-USW-RG-WVD-FromMod"
location = "West US 2"
}

module "avd" {
  source                         = "./modules/avd"
  rgname                         = azurerm_resource_group.default.name
  region                         = azurerm_resource_group.default.location
  pooledhpname                   = "VFF-WUS-TFRM-Mod"
  pooledhpfriendlyname           = "VFF Pooled Host Pool"
  pooledhpdescription            = "VFF Pooled Host Pool"
  pooledhpremoteappname          = "VFF-WUS-TFRM-Mod-RA"
  pooledhpremoteappfriendlyname  = "VFF Pooled Host Pool Remote Apps"
  pooledhpremoteappdescription   = "VFF Pooled Host Pool Remote Apps"
  pooledhpdesktopappname         = "VFF-WUS-TFRM-Mod-DT"
  pooledhpdesktopappfriendlyname = "VFF Pooled Host Pool Remote Apps"
  pooledhpdesktopappdescription  = "VFF Pooled Host Pool Remote Apps"
  workspace                      = "VFF-Terraform-Wkspc-Mod"
  workspacefriendlyname          = "VFF-Terraform-Workspace"
  workspacedesc                  = "VFF-Terraform-Workspace"
  pooledhpmaxsessions            = 50
}