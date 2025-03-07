# Define config variables
variable "labelPrefix" {
  type        = string
  description = "Your college username. This will form the beginning of various resource names."
}

variable "region" {
  description = "Region to deploy resources"
  default     = "canadacentral"
}

variable "storage_account_name" {
  description = "Name of storage account"
  default     = "cst8918storage09"
}

variable "container_name" {
  description = "Name of storage container"
  default     = "cst8918container09"
}