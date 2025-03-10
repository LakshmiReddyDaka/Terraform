# Define a variable to hold GCP credentials
variable "GOOGLE_CREDENTIALS" {}

# Google Cloud Provider Configuration
provider "google" {
  credentials = jsondecode(var.GOOGLE_CREDENTIALS)
  project     = "winged-will-451921-k7"
  region      = "us-central1" # Change to your preferred region
}

# Example: Create a simple GCP Storage Bucket
resource "google_storage_bucket" "example171195" {
  name     = "my-bucket-lakshmi-daka-171195"
  location = "US"
  force_destroy = true
}

# Output the bucket URL
output "bucket_url" {
  value = google_storage_bucket.example171195.url
}
