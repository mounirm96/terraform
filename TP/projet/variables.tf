# variables.tf

variable "location" {
  description = "The Azure location to deploy the resources."
  type        = string
  default     = "France Central"
}

variable "vm_size" {
  description = "The size of the VM."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the VM."
  type        = string
  default     = "azureuser"
}

variable "api_repo_url" {
  description = "The URL of the API repository."
  type        = string
}

