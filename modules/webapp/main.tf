resource "azurerm_resource_group" "this" {
  name     = "rg-quoteportal-${var.environment}-${var.location_short}"
  location = var.location
}

resource "azurerm_service_plan" "this" {
  name                = "asp-quoteportal-${var.environment}-${var.location_short}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  os_type             = "Linux"
  sku_name            = var.sku_name
}

resource "azurerm_linux_web_app" "this" {
  name                = "app-quoteportal-${var.environment}-${var.app_name_suffix}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_service_plan.this.location
  service_plan_id     = azurerm_service_plan.this.id
  https_only          = true

  site_config {
    always_on = false
  }
}