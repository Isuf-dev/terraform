terraform {
  backend "gcs" {
    bucket = "morpheus-terraform-state-bucket"
    prefix = "terraform/state"
  }
}
