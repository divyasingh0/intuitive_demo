variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Globally unique Storage Account Name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}