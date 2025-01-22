#definir provider cloud
provider "google" {
  credentials = file(var.credentials_json_path)
  project = var.project_id
  region = var.region_name
}

#definir provider para GCP Dataform
provider "google-beta" {
  credentials = file(var.credentials_json_path)
  project = var.project_id
  region = var.region_name
}
