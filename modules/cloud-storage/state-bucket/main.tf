resource "google_storage_bucket" "tfstate_bucket" {
  name     = "${var.project_id}-tf-bucket"
  location = var.region_name

  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

