variable "name" {
  type        = string
  default = "test-web-app"
}

variable "rg_name" {
  type        = string
  default = "test-rg"
}  

variable "public_network_access_enabled" {
  type        = bool
  default     = true
}

variable "always_on" {
  type        = bool
  default     = true
}

variable "api_definition_url" {
  type        = string
  default     = null
}

variable "api_management_api_id" {
  type        = string
  default     = null
}

variable "deployment_type" {
  type        = string
  default     = "dotnet"
}

variable "dotnet_version" {
  type        = string
  default     = "v6.0"
}

variable "virtual_application" {
  type = list(object({
    virtual_path  = string
    physical_path = string
    preload       = bool
  }))
  default = []
}

variable "location" {
  type        = string
  nullable    = false
  description = "App service plan Location"
}

variable "os_type" {
  type     = string
  nullable = true
  default  = "Windows"
}

variable "sku_name" {
  type        = string
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, P1v2, P2v2, P3v2, P0v3, P1v3, P2v3, P3v3, P1mv3, P2mv3, P3mv3, P4mv3, P5mv3, S1, S2, S3, SHARED, EP1, EP2, EP3, FC1, WS1, WS2, WS3, and Y1"
  default     = "B1"
}

variable "zone_balancing_enabled" {
  type        = bool
  default     = false
  description = " Should the Service Plan balance across Availability Zones in the region"
}


variable "maximum_elastic_worker_count" {
  type    = number
  default = 0
}

variable "per_site_scaling" {
  type        = bool
  default     = true
  description = "Can Apps assigned to this App Service Plan be scaled independently? If set to false apps assigned to this plan will scale to all instances of the plan"
}

variable "tags" {
  type        = map(string)
  nullable    = false
  description = "Resource TAGS"
}


variable "premium_plan_auto_scale_enabled" {
  type        = bool
  default     = false
  description = "set to true to enable auto scaling for premium plan"
}