resource "google_storage_bucket" "gcp1" {
  name = "bucket-from-tf-from-service-account"
  location = "us-central1"
}
