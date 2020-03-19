variable "organization_id" {
    description   = "Organization id"
    type          = string
}

variable "component_name" {
  description = "Name of the component for which these permissions are intended"
  type        = string
}

variable "admin_permissions" {
  description = "IAM permissions for administrators"
  type        = list(string)
  default     = []
}

variable "ops_permissions" {
  description = "IAM permissions for operations staff"
  type        = list(string)
  default     = []
}

variable "dev_permissions" {
  description = "IAM permissions for developers"
  type        = list(string)
  default     = []
}

variable "users_permissions" {
  description = "IAM permissions for users"
  type        = list(string)
  default     = []
}

variable "permissions" {
  description = "IAM permissions"
  type = object({
    admin = list(string)
    ops = list(string)
    dev = list(string)
    user = list(string)
  })
  default = 
    {
      admin = []
      ops = []
      dev = []
      user = []
    }
  
}