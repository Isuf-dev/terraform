provider "google" {
  credentials = file("bledi2024-0301f61eb7f0.json")  # GCP credentials JSON
  project     = var.gcp_project_id
  region      = var.gcp_region
}

provider "morpheus" {
  url      = var.morpheus_url
  username = var.morpheus_username
  password = var.morpheus_password
}
