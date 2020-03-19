variable "organization_id" {
    description   = "Organization id"
    type          = string
}

variable "iam_roles" {
  description = "IAM Roles to assign to the user"
  type        = list(string)
  default     = []
}

variable "user" {
  description = "Organizational user to create"
  type        = string
}