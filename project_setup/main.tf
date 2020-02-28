provider "google" {
  version     = "~> 2.5.0"
  # Update credentials to the correct location, alternatively set   GOOGLE_APPLICATION_CREDENTIALS=/path/to/.ssh/bq-key.json in your shell session and   remove the credentials attribute.
}

module "development_project"  {
    source              = "./development-project-module" # Path to the module
    organization_id     = "964137068439" 
    department_id       = "VIR"
    name                = "Test Risk Data Flow"
    icto                = "123456"
    environment_type    = "dev"
    region              = "emea"
    data_classification = "c3"
}
