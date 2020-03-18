provider "google" {
  version     = "~> 2.5.0"
  # Update credentials to the correct location, alternatively set   GOOGLE_APPLICATION_CREDENTIALS=/path/to/.ssh/bq-key.json in your shell session and   remove the credentials attribute.
}

locals {
    organization_id = "964137068439"
}

module "organization_dev_bigquery_role" {
    source              = "../../modules/component_roles/bigquery/dev" # Path to the module
    organization_id     = "964137068439"
    data_classification = "c"
    permissions = [
        "iam.roles.list",
        "iam.roles.create",
        "iam.roles.delete"
    ]
}
