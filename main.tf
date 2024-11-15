resource "google_compute_instance" "gcp_vm_via_terraform_and_morpheus" {
  name          = "gcp-vm-example"
  description   = "VM on GCP managed by Morpheus"
  instance_type = var.instance_type
  image_id      = var.ami_id  # The Morpheus image ID mapping to a GCP image
  zone          = var.gcp_region
  subnet_id     = var.subnet_id
  network_id    = var.vpc_id

  disk {
    size         = var.disk_size_os
    disk_type    = "persistent"
    bootable     = true
    auto_delete  = true
    encrypted    = true
  }

  disk {
    size         = var.disk_size_data
    disk_type    = "persistent"
    auto_delete  = true
    encrypted    = true
  }

  tags = ["cloud", "gcp"]
}

resource "google_compute_firewall" "default" {
  name    = "allow-ssh-http"
  network = var.vpc_id

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh", "http","https"]
}

