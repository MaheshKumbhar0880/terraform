terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.10.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "big-data-project-410313"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "keys.json"
}

resource "google_storage_bucket" "gcp1" {
  name = "bucket-from-tf-from-service-account"
  location = "us-central1"
}