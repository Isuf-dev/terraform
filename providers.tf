provider "google" {
  credentials = file("<YOUR-CREDENTIALS-FILE>.json")  # GCP credentials JSON
  project     = var.gcp_project_id
  region      = var.gcp_region
}

provider "morpheus" {
  url      = var.morpheus_url
  username = var.morpheus_username
  password = var.morpheus_password
}
