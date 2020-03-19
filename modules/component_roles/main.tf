#
#
#
locals {
  # select only those roles that have permissions
  valid_roles = {
    for key, value in var.permissions:
      key => value  if length(value) != 0
  }
  roles = keys(local.valid_roles)
  role_permissions = values(local.valid_roles)
}

resource "google_organization_iam_custom_role" "role" {
  count       = length(local.roles)
  role_id     = format("%s_%s", element(local.roles, count.index), var.component_name)
  org_id      = var.organization_id
  title       = format("%s role for %s", element(local.roles, count.index), var.component_name)
  description = "A description"
  permissions = element(local.role_permissions, count.index)
}
