variable "environment" {
  type = string
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "The Azure region to deploy resources"
}
