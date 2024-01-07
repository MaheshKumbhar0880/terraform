resource "google_bigquery_dataset" "dataset" {
    dataset_id                  = "terraform_dataset"
    friendly_name               = "test"
    description                 = "This is a test description"
    location                    = "us-central1"
    default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "table" {
    dataset_id = google_bigquery_dataset.dataset.dataset_id
    table_id = "table_from_terraform"
}