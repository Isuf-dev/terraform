variable "gcp_project_id" {
  type        = string
  description = "The GCP project ID"
}

variable "gcp_region" {
  type        = string
  description = "The GCP region for deployment"
  default     = "us-central1"
}

variable "morpheus_url" {
  type        = string
  description = "The Morpheus API URL"
}

variable "morpheus_username" {
  type        = string
  description = "Morpheus API username"
}

variable "morpheus_password" {
  type        = string
  description = "Morpheus API password"
}

variable "instance_type" {
  type        = string
  description = "The type of instance to create"
  default     = "n1-standard-1"
}

variable "ami_id" {
  type        = string
  description = "The GCP image ID"
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "disk_size_os" {
  type        = number
  description = "Size of the OS disk in GB"
  default     = 30
}

variable "disk_size_data" {
  type        = number
  description = "Size of the data disk in GB"
  default     = 100
}

variable "subnet_id" {
  type        = string
  description = "GCP subnet ID"
}

variable "vpc_id" {
  type        = string
  description = "GCP VPC ID"
}

variable "impersonate_service_account_email" {
  type        = string
  description = "The service account to impersonate"
}
