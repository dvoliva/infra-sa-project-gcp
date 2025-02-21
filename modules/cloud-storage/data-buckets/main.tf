resource "google_storage_bucket" "data_bucket" {
  for_each = toset(var.bucket_name)

  name     = each.key
  location = var.region_name

  force_destroy               = false
  public_access_prevention    = var.public_access_prevention
  uniform_bucket_level_access = var.uniform_bucket_level_access

  versioning {
    enabled = var.versioning_enabled
  }
}