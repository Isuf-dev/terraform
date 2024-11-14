terraform {
  required_version = "1.9.8"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.10.0"
    }
    morpheus = {
      source  = "morpheus/morpheus"
      version = "~> 2.0"
    }
  }
}
