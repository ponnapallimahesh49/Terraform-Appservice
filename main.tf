resource "azurerm_windows_web_app" "this" {
  name                          = var.name
  resource_group_name           = var.rg_name
  location                      = var.location
  service_plan_id = azurerm_service_plan.this.id
  public_network_access_enabled = var.public_network_access_enabled

  site_config {
    always_on             = var.always_on
    api_definition_url    = var.api_definition_url
    api_management_api_id = var.api_management_api_id
    application_stack {
      current_stack  = var.deployment_type
      dotnet_version = var.deployment_type == "dotnet" ? var.dotnet_version : null
    }
    
    }
  }

 
resource "azurerm_service_plan" "this" {
  name                            = "${var.name}-plan"
  location                        = var.location
  resource_group_name             = var.rg_name
  os_type                         = var.os_type
  sku_name                        = var.sku_name
  maximum_elastic_worker_count = startswith(var.sku_name, "P") || startswith(var.sku_name, "E") ? var.maximum_elastic_worker_count : null  
  zone_balancing_enabled          = var.zone_balancing_enabled
  per_site_scaling_enabled        = var.per_site_scaling
  premium_plan_auto_scale_enabled = startswith(var.sku_name, "P") ? true : false
  tags                            = var.tags
}
  







