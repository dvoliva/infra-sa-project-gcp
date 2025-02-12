#definir provider cloud
# data "google_secret_manager_secret_version" "terraform_sa" {
#   secret = "terraform-sa-key"
# }

provider "google" {
  credentials = var.credentials_json_path
  project     = var.project_id
  region      = var.region_name
}

#definir provider para GCP Dataform
provider "google-beta" {
  credentials = var.credentials_json_path
  project     = var.project_id
  region      = var.region_name
}
