provider "google" {
  version     = "~> 2.5.0"
  # Update credentials to the correct location, alternatively set   GOOGLE_APPLICATION_CREDENTIALS=/path/to/.ssh/bq-key.json in your shell session and   remove the credentials attribute.
}

locals {
    organization_id = "964137068439"
}

module "organization_user_creation" {
    source              = "../../modules/organization_roles" # Path to the module
    organization_id     = "964137068439"
    user                = "ops@jajabro.com"
    iam_roles           = [
        "roles/owner",
        "roles/iam.serviceAccountAdmin",
        "roles/iam.serviceAccountCreator",
        "roles/iam.serviceAccountDeleter",
        "roles/iam.serviceAccountKeyAdmin",
        "roles/iam.securityAdmin"
    ]
}
