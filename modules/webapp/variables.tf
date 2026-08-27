variable "environment" {
  type        = string
  description = "Environment name (dev, staging, prod)"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "westus2"
}

variable "location_short" {
  type        = string
  description = "Short region code used in resource names"
  default     = "wus2"
}

variable "sku_name" {
  type        = string
  description = "App Service Plan SKU"
  default     = "F1"
}

variable "app_name_suffix" {
  type        = string
  description = "Globally unique suffix for the web app hostname"
}