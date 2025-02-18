module "cloud-storage" {
  source      = "./modules/cloud-storage"
  bucket_name = var.bucket_name
  region_name = var.region_name
  project_id  = var.project_id
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
}
