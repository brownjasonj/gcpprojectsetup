provider "google" {
  version     = "~> 2.5.0"
  # Update credentials to the correct location, alternatively set   GOOGLE_APPLICATION_CREDENTIALS=/path/to/.ssh/bq-key.json in your shell session and   remove the credentials attribute.
}

locals {
  organization_id = "964137068439"
}

module "organization_role_creation" {
    source              = "../../../modules/component_roles" # Path to the module
    organization_id     = "964137068439"
    component_name      = "bigquery"
    permissions          = {
        admin = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
        ops = []
        dev = []
        user = []
    }
}