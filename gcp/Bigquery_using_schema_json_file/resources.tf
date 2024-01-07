resource "google_bigquery_dataset" "dataset1" {
  dataset_id = "dataset-2-fro-terraform"
}


resource "google_bigquery_table" "example_table" {
  dataset_id = google_bigquery_dataset.dataset1.dataset_id
  table_id   = "table-using-schema-json-file"

  schema = jsonencode("Terraform/terraform/gcp/Bigquery_using_schema_json_file/schema.json")
}
