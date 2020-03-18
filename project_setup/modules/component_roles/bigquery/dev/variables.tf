variable "organization_id" {
    description   = "Organization id"
    type          = string
}

variable "permissions" {
  description = "IAM permissions"
  type        = list(string)
  default     = []
}

variable "data_classification" {
  description = "Data classification"
  type        = string
}