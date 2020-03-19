#
#
#
resource "google_organization_iam_member" "binding" {
    count = length(var.iam_roles)
    org_id = var.organization_id
    role   = element(var.iam_roles, count.index)
    member = "user:${var.user}"
}
