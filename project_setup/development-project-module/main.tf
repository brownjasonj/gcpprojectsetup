resource "random_string" "random" {
  length = 8
  special = true
  override_special = "/@£$"
}

resource "google_project" "project" {
    name        = var.name
    project_id  = format("%s-%s-%s-%s", var.environment_type, var.region, var.data_classification, lower(random_string.random.result))
    folder_id   = google_folder.department.name
    # probably should use labels to identify the various types of environments
    # e.g., 
    # "icto": "1234567"
    # "component": "result-store"
    # "environment-type": "prod/uat/dev"
    # "data-classification": "c1/c2/c3/c4"
    # "region": "emea/americas/apac"
    # 
    labels      = {
        icto = var.icto
        environment_type = var.environment_type
        data_classification = var.data_classification
        region = var.region
    }
}

resource "google_folder" "department" {
    display_name    = var.department_id
    parent          = format("organizations/%s", var.organization_id)
}

