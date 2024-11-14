data "google_compute_image" "latest_ubuntu" {
  family  = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"
}
