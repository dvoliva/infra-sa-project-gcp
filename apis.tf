
resource "google_project_service" "required_apis" {
  for_each = toset([
    "bigquery.googleapis.com",
    "storage.googleapis.com",             # API de Cloud Storage
    "iam.googleapis.com",                 # API de IAM
    "cloudresourcemanager.googleapis.com", # API de Resource Manager
    "secretmanager.googleapis.com" # API de Secret Manager
  ])

  project                    = var.project_id
  service                    = each.key
  disable_dependent_services = false
  disable_on_destroy         = false
}
