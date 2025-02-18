
resource "google_project_service" "required_apis" {
  for_each = toset([
    "bigquery.googleapis.com",
    "storage.googleapis.com",              
    "iam.googleapis.com",                  
    "cloudresourcemanager.googleapis.com", 
    "secretmanager.googleapis.com",
    "pubsub.googleapis.com"         # API de Secret Manager
  ])

  project                    = var.project_id
  service                    = each.key
  disable_dependent_services = false
  disable_on_destroy         = false
}
