provider "google" {
  impersonate_service_account = "EMAIL_OF_THE_SA"
  project     = var.gcp_project_id
  region      = var.gcp_region
}

provider "morpheus" {
  url      = var.morpheus_url
  username = var.morpheus_username
  password = var.morpheus_password
}
