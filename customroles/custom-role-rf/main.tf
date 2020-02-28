resource "google_project_iam_custom_role" "edit-access-app-versions" {
  role_id     = "editAccessAppVersions"
  title       = "Role Editor"
  description = "Edit access for App Versions"
  permissions = ["appengine.versions.create", "appengine.versions.delete"]
}