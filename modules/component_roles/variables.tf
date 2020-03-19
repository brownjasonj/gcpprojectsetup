variable "organization_id" {
    description   = "Organization id"
    type          = string
}

variable "component_name" {
  description = "Name of the component for which these permissions are intended"
  type        = string
}

variable "permissions" {
  description = "IAM permissions"
  type = object({
    admin = list(string)
    ops = list(string)
    dev = list(string)
    user = list(string)
  })
}