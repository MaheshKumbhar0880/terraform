resource "local_file" "sample" {
    filename = "sample.txt"
    content = "Hello from Terraform"
}