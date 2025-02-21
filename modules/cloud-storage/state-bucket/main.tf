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

resource "google_storage_bucket" "data-buckets" {
  for_each = toset(var.bucket_name)

  name     = each.key
  location = var.region_name

  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}
