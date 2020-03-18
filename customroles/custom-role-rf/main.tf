resource "google_project_iam_custom_role" "ro-user" {
  role_id     = "editAccessAppVersions"
  title       = "Role Editor"
  description = "Edit access for App Versions"
  permissions = ["appengine.versions.create", "appengine.versions.delete"]
}

resource "google_project_iam_custom_role" "edit-user" {
  role_id     = "editAccessAppVersions"
  title       = "Role Editor"
  description = "Edit access for App Versions"
  permissions = ["appengine.versions.create", "appengine.versions.delete"]
}

resource "google_project_iam_custom_role" "service" {
  role_id     = "editAccessAppVersions"
  title       = "Role Editor"
  description = "Edit access for App Versions"
  permissions = ["appengine.versions.create", "appengine.versions.delete"]
}
