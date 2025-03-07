# Define the resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.labelPrefix}-A09-RG"
  location = var.region
}

# Create a Storage account
resource "azurerm_storage_account" "terraform_state" {
  name                     = "${var.storage_account_name}${var.labelPrefix}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

# Create a Storage container
resource "azurerm_storage_container" "terraform_state" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.terraform_state.name
  container_access_type = "container"
}