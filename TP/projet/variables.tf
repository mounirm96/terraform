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

variable "username" {
  description = "The admin username for the VM."
  type        = string
  default     = "azureuser"
}
