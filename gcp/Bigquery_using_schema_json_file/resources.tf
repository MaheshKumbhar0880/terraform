resource "google_bigquery_dataset" "dataset1" {
    dataset_id = "dataset-2-fro-terraform"
}

data "template_file" "schema" {
    template = file("schema.json")
}

resource "google_bigquery_table" "example_table" {
    dataset_id = google_bigquery_dataset.dataset1.dataset_id
    table_id   = "table-using-schema-json-file"
    schema = jsonencode(data.template_file.schema.rendered)
}
