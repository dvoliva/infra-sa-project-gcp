
resource "google_project_service" "required_apis" {
  for_each = toset([
    "iam.googleapis.com", #IAM
    "cloudresourcemanager.googleapis.com",
    "secretmanager.googleapis.com",  #Secret Manager
    "cloudfunctions.googleapis.com", #Cloud functions
    "run.googleapis.com",            #Cloud Run
    "pubsub.googleapis.com",         #PubSub
    "dataflow.googleapis.com",       #dataflow
    "bigquery.googleapis.com",       #BQ
    "storage.googleapis.com",        #CloudStorage
    "aiplatform.googleapis.com",     #Vertex
    "logging.googleapis.com"         #cloud loggin
  ])

  project                    = var.project_id
  service                    = each.key
  disable_dependent_services = false
  disable_on_destroy         = false
}
