#
#
#
locals {
    role_id = format("devbigquery", var.data_classification)
}

resource "google_organization_iam_custom_role" "dev-biquery-role" {
  role_id     = local.role_id
  org_id      = var.organization_id
  title       = "Bigquery dev role"
  description = "A description"
  permissions = var.admin-permissions
}

resource "google_organization_iam_custom_role" "dev-biquery-role" {
  role_id     = local.role_id
  org_id      = var.organization_id
  title       = "Bigquery dev role"
  description = "A description"
  permissions = var.ops-permissions
}

resource "google_organization_iam_custom_role" "dev-biquery-role" {
  role_id     = local.role_id
  org_id      = var.organization_id
  title       = "Bigquery dev role"
  description = "A description"
  permissions = var.dev-permissions
}

resource "google_organization_iam_custom_role" "dev-biquery-role" {
  role_id     = local.role_id
  org_id      = var.organization_id
  title       = "Bigquery dev role"
  description = "A description"
  permissions = var.user-permissions
}
