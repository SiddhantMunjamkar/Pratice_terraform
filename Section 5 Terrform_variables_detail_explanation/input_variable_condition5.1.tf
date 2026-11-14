variable "location" {
  type        = string
  description = "The Azure region to deploy resources."

  validation {
    condition     = contains(["eastus", "westus", ], lower(var.location))
    error_message = "Unsupported Azure Region specified. Supported regions include eastus,westus"

  }

}
